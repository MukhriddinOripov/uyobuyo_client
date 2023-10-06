import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/reverse_lat_lang_model.dart';
import 'package:uyobuyo_client/infrastructure/services/shared_pref_service.dart';
import 'package:uyobuyo_client/presentation/assets/icons.dart';
import 'package:uyobuyo_client/presentation/assets/images.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  String currentLocationName = '';
  late YandexMapController yandexMapController;
  final List<MapObject> mapObjects = [];
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
    _checkLocationPermission();
  }

  moveCurrentLocation() async {
    await yandexMapController.moveCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: Point(latitude: position!.latitude, longitude: position!.longitude),
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
    getAddressByLatLong(latitude: currentPosition.latitude, longitude: currentPosition.longitude);

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
          currentLocationName = "${data.address.houseNumber ?? ""}, ${data.address.road ?? ""}, ${data.address.county}";
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
      await getAddressByLatLong(latitude: centerCoordinates.latitude, longitude: centerCoordinates.longitude);
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
      key: _globalKey,
      drawer: drawer(),
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
                      if (ifVisibleBottom)
                        BoxShadow(
                          color: AppTheme.colors.black,
                          blurRadius: 8,
                          spreadRadius: 2,
                          offset: const Offset(0, 8),
                        ),
                    ],
                  ),
                ),
                if (!ifVisibleBottom)
                  Container(
                    height: 12,
                    width: 12,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: AppTheme.colors.black,
                          blurRadius: 6,
                          offset: const Offset(0, 6),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          Positioned(
            top: 52,
            left: 16.w,
            child: GestureDetector(
              onTap: () => _globalKey.currentState?.openDrawer(),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppTheme.colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SvgPicture.asset(AppIcons.drawer),
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: MediaQuery.sizeOf(context).width / 4.5,
            right: MediaQuery.sizeOf(context).width / 4.5,
            child: Text(
              currentLocationName,
              style: AppTheme.data.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
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
                    margin: const EdgeInsets.only(right: kPaddingDefault, bottom: 16),
                    decoration: BoxDecoration(color: AppTheme.colors.white, borderRadius: BorderRadius.circular(12)),
                    child: const Icon(Icons.my_location),
                  ),
                ),
                ifVisibleBottom
                    ? Container(
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
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: AppTheme.colors.black40),
                            ),
                            const SizedBox(height: 16),
                            Container(
                              height: 74,
                              width: MediaQuery.sizeOf(context).width - 32,
                              decoration: BoxDecoration(
                                color: AppTheme.colors.primary.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: kPaddingDefault),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(context.loc.where_we_go, style: AppTheme.data.textTheme.bodyMedium),
                                        Text(
                                          context.loc.trips_to_regions,
                                          style: AppTheme.data.textTheme.labelMedium
                                              ?.copyWith(fontWeight: FontWeight.w400, color: AppTheme.colors.black60),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 74,
                                    width: 80,
                                    alignment: Alignment.centerRight,
                                    padding: const EdgeInsets.only(left: 16),
                                    decoration: BoxDecoration(
                                      color: AppTheme.colors.primary.withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: SvgPicture.asset(AppImages.orderImage),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 16),
                            Container(
                              height: 74,
                              width: MediaQuery.sizeOf(context).width - 32,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: kPaddingDefault),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(context.loc.delivery, style: AppTheme.data.textTheme.bodyMedium),
                                        Text(
                                          context.loc.weight_delivery,
                                          style: AppTheme.data.textTheme.labelMedium
                                              ?.copyWith(fontWeight: FontWeight.w400, color: AppTheme.colors.black60),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 74,
                                    width: 80,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.greenAccent.withOpacity(0.8),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    child: SvgPicture.asset(AppImages.deliveryImage),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 24),
                          ],
                        ),
                      )
                    : const SizedBox()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget drawer() => Drawer(
        child: Padding(
          padding: EdgeInsets.only(top: 87.h, bottom: 80.h),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: kPaddingDefault.w, left: kPaddingDefault.w),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 48.w,
                      width: 48,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(image: AssetImage(AppImages.onboard), fit: BoxFit.fill),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Аброр Ахмедов", style: AppTheme.data.textTheme.headlineMedium),
                        SizedBox(height: 4.h),
                        Text(
                          "+998 (99) 999-99-99",
                          style: AppTheme.data.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w400, color: AppTheme.colors.black60),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          "ID:100104",
                          style: AppTheme.data.textTheme.labelMedium?.copyWith(fontWeight: FontWeight.w400, color: AppTheme.colors.primary),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              drawerComponent(onTap: () {}, icon: AppIcons.clock, label: context.loc.history_order),
              drawerComponent(onTap: () {}, icon: AppIcons.setting, label: context.loc.setting),
              drawerComponent(onTap: () {}, icon: AppIcons.faq, label: context.loc.faq),
              drawerComponent(onTap: () {}, icon: AppIcons.support, label: context.loc.support_service),
              drawerComponent(onTap: () {}, icon: AppIcons.info, label: context.loc.info),
              const Spacer(),
              drawerComponent(
                  onTap: () {}, icon: AppIcons.logOut, label: context.loc.log_out, textColor: AppTheme.colors.red, iconColor: AppTheme.colors.red),
            ],
          ),
        ),
      );

  Widget drawerComponent({required Function() onTap, required String icon, required String label, Color? textColor, Color? iconColor}) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            color: Colors.transparent,
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: kPaddingDefault),
            child: Row(
              children: [
                SvgPicture.asset(
                  icon,
                  width: 24,
                  height: 24,
                  color: iconColor ?? AppTheme.colors.black80,
                ),
                const SizedBox(width: 12),
                Text(
                  label,
                  style: AppTheme.data.textTheme.bodySmall?.copyWith(fontWeight: FontWeight.w500, color: textColor ?? AppTheme.colors.black80),
                ),
              ],
            ),
          ),
          Divider(color: AppTheme.colors.black20, height: 0.1),
        ],
      ),
    );
  }
}
