import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:uyobuyo_client/application/select_address/select_address_cubit.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/reverse_lat_lang_model.dart';
import 'package:uyobuyo_client/infrastructure/services/shared_pref_service.dart';
import 'package:uyobuyo_client/presentation/assets/images.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/main_button_component.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class ChooseLocationInMapPage extends StatefulWidget {
  final Object? extra;

  const ChooseLocationInMapPage({super.key, this.extra});

  @override
  State<ChooseLocationInMapPage> createState() => _ChooseLocationInMapPageState();
}

class _ChooseLocationInMapPageState extends State<ChooseLocationInMapPage> {
  late YandexMapController yandexMapController;
  final List<MapObject> mapObjects = [];
  late double lat;
  late double long;
  late Color indicatorColor;

  String currentLocationName = '';
  LatLangResultModel? fullLocationName;

  List<MapObject> placeMarks = [];
  bool ifVisibleBottom = true;

  static Position? position;

  Future<void> _checkLocationPermission() async {
    final status = await Geolocator.checkPermission();
    if (status == LocationPermission.always || status == LocationPermission.whileInUse) {
      await getCurrentLocation();
      await moveCurrentLocation();
    } else if (status == LocationPermission.denied) {
      final result = await Geolocator.requestPermission();
      if (result == LocationPermission.always || result == LocationPermission.whileInUse) {
        await getCurrentLocation();
        await moveCurrentLocation();
      }
    }
  }

  @override
  void initState() {
    super.initState();
    AndroidYandexMap.useAndroidViewSurface = false;
    lat = (widget.extra as Map)["lat"];
    long = (widget.extra as Map)["long"];
    indicatorColor = (widget.extra as Map)["indicatorColor"];
    _checkLocationPermission();
  }

  moveCurrentLocation() async {
    await yandexMapController.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: Point(latitude: position?.latitude ?? lat, longitude: position?.longitude ?? long),
          zoom: 16,
        ),
      ),
    );
  }

  getCurrentLocation() async {
    final currentPosition = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
    );
    position = currentPosition;
    // final Map<dynamic, dynamic> address = await geocoderService.convertToAddress(
    //   latitude: currentPosition.latitude,
    //   longitude: currentPosition.longitude,
    // );
    await getAddressByLatLong(
      latitude: position?.latitude ?? lat,
      longitude: position?.longitude ?? long,
    );
    // setState(() {
    //   fullLocationName = address;
    //   currentLocationName =
    //       "${address["house"]}${address["house"].isNotEmpty ? ', ' : ""}${address["district"].isNotEmpty ? address["district"].last : address["street"].isNotEmpty ? address["street"] : address["unknown"].isNotEmpty ? address['unknown'] : address["area"]}";
    // });
    await addObjectToMap();
    setState(() {});
  }

  Future<void> addObjectToMap() async {
    placeMarks.add(
      PlacemarkMapObject(
        onTap: (PlacemarkMapObject placeMap, Point point) {},
        mapId: const MapObjectId('position'),
        opacity: 1,
        icon: PlacemarkIcon.single(
          PlacemarkIconStyle(
            scale: 0.6,
            image: BitmapDescriptor.fromAssetImage(AppImages.indicator),
          ),
        ),
        point: Point(
          latitude: position!.latitude,
          longitude: position!.longitude,
        ),
      ),
    );
    mapObjects.addAll(placeMarks);
    setState(() {});
  }

  Future getAddressByLatLong({required double latitude, required double longitude}) async {
    SharedPrefService pref = await SharedPrefService.initialize();

    Dio(
      BaseOptions(
        baseUrl: 'https://nominatim.openstreetmap.org',
        responseType: ResponseType.json,
        headers: {
          "Accept": "application/json",
          "Accept-Language": pref.getLanguage,
        },
      ),
    ).get('/reverse?format=jsonv2&lat=$latitude&lon=$longitude').then(
      (value) {
        LatLangResultModel data = LatLangResultModel.fromJson(value.data);
        setState(() {
          fullLocationName = data;
          currentLocationName =
              "${data.address.houseNumber != null ? "${data.address.houseNumber}" : ""}${data.address.road != null ? ", ${data.address.road}" : ""}${data.address.county != null ? ", ${data.address.county}" : ""}";
        });
      },
    );
  }

  void _onCameraPositionChanged(CameraPosition position, CameraUpdateReason reason, bool hasGesture) async {
    // Получите координаты центра карты
    if (hasGesture) {
      final centerCoordinates = position.target;
      print('Latitude: ${centerCoordinates.latitude}, Longitude: ${centerCoordinates.longitude}');
      await Future.delayed(const Duration(milliseconds: 500));
      // final address = await geocoderService.convertToAddress(
      //   latitude: centerCoordinates.latitude,
      //   longitude: centerCoordinates.longitude,
      // );
      await getAddressByLatLong(
        latitude: centerCoordinates.latitude,
        longitude: centerCoordinates.longitude,
      );
      // setState(() {
      //   fullLocationName = address;
      //   currentLocationName =
      //       "${address["house"]}${address["house"].isNotEmpty ? ', ' : ""}${address["district"].isNotEmpty ? address["district"].last : address["street"].isNotEmpty ? address["street"] : address["unknown"].isNotEmpty ? address['unknown'] : address["area"]}";
      // });
      ifVisibleBottom = true;
    } else {
      setState(() {
        ifVisibleBottom = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          YandexMap(
            mapMode: MapMode.transit,
            mapType: MapType.vector,
            mapObjects: mapObjects,
            onMapCreated: (YandexMapController controller) async {
              yandexMapController = controller;
              await controller.moveCamera(
                animation: const MapAnimation(type: MapAnimationType.linear, duration: 1),
                CameraUpdate.newCameraPosition(
                  CameraPosition(
                    target: Point(
                      latitude: position!.latitude,
                      longitude: position!.longitude,
                    ),
                    zoom: 14,
                  ),
                ),
              );
            },
            onCameraPositionChanged: _onCameraPositionChanged,
          ),
          Positioned(
            left: MediaQuery.sizeOf(context).width / 2 - 20,
            top: MediaQuery.sizeOf(context).height / 2 - 50,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(shape: BoxShape.circle, color: AppTheme.colors.primary),
                  child: Container(
                    height: 8,
                    width: 8,
                    decoration: BoxDecoration(shape: BoxShape.circle, color: AppTheme.colors.white),
                  ),
                ),
                Container(
                  height: 12,
                  width: 2,
                  decoration: BoxDecoration(
                    color: AppTheme.colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.colors.black,
                        blurRadius: 8,
                        spreadRadius: 2,
                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width - 32,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.read<SelectAddressCubit>().getAddress(
                                address: currentLocationName,
                                subAddress: fullLocationName != null
                                    ? "${fullLocationName!.address.road != null ? "${fullLocationName!.address.road}," : ""} ${fullLocationName!.address.city!.isNotEmpty ? "${fullLocationName!.address.city}," : ""}"
                                    : '',
                                isFrom: indicatorColor == AppTheme.colors.dark,
                              );
                          context.pop();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(color: AppTheme.colors.white, borderRadius: BorderRadius.circular(12)),
                          child: const Icon(Icons.arrow_back),
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () async {
                          final status = await Geolocator.checkPermission();
                          if (status == LocationPermission.always || status == LocationPermission.whileInUse) {
                            await _checkLocationPermission();
                          } else if (status == LocationPermission.denied) {
                            final result = await Geolocator.requestPermission();
                            if (result == LocationPermission.always || result == LocationPermission.whileInUse) {
                              await _checkLocationPermission();
                            }
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(color: AppTheme.colors.white, borderRadius: BorderRadius.circular(12)),
                          child: const Icon(Icons.my_location),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: kPaddingDefault),
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: AppTheme.colors.white,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(32),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        width: 48,
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xFFE3E8FC),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        width: MediaQuery.sizeOf(context).width - 32,
                        color: Colors.transparent,
                        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: kPaddingDefault),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(4),
                              decoration: BoxDecoration(shape: BoxShape.circle, color: indicatorColor),
                              child: Container(
                                height: 12,
                                width: 12,
                                decoration: BoxDecoration(shape: BoxShape.circle, color: AppTheme.colors.white),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: MediaQuery.sizeOf(context).width / 1.4,
                                  child: Text(
                                    currentLocationName,
                                    overflow: TextOverflow.ellipsis,
                                    style: AppTheme.data.textTheme.bodyMedium,
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  fullLocationName != null
                                      ? "${fullLocationName!.address.road != null ? "${fullLocationName!.address.road}," : ""} ${fullLocationName!.address.city!.isNotEmpty ? "${fullLocationName!.address.city}," : ""}"
                                      : '',
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTheme.data.textTheme.bodySmall?.copyWith(color: AppTheme.colors.black80),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      MainButtonComponent(
                        name: context.loc.proceed,
                        onPressed: () {
                          context.read<SelectAddressCubit>().getAddress(
                                address: currentLocationName,
                                subAddress: fullLocationName != null
                                    ? "${fullLocationName!.address.road != null ? "${fullLocationName!.address.road}," : ""} ${fullLocationName!.address.city!.isNotEmpty ? "${fullLocationName!.address.city}," : ""}"
                                    : '',
                                isFrom: indicatorColor == AppTheme.colors.dark,
                              );
                          context.pop();
                        },
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
