import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:uyobuyo_client/application/auth/auth_bloc.dart';
import 'package:uyobuyo_client/application/main_page_manage/main_bloc.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
import 'package:uyobuyo_client/infrastructure/common/utils/lang/loc.dart';
import 'package:uyobuyo_client/infrastructure/dto/models/reverse_lat_lang_model.dart';
import 'package:uyobuyo_client/infrastructure/services/shared_pref_service.dart';
import 'package:uyobuyo_client/presentation/assets/icons.dart';
import 'package:uyobuyo_client/presentation/assets/images.dart';
import 'package:uyobuyo_client/presentation/assets/theme/app_theme.dart';
import 'package:uyobuyo_client/presentation/components/geodecoder.dart';
import 'package:uyobuyo_client/presentation/modules/main_module/delivery_module/delivery_detail_dialog.dart';
import 'package:uyobuyo_client/presentation/pages/base_page.dart';
import 'package:uyobuyo_client/presentation/pages/main_page/choose_location_in_map_page.dart';
import 'package:uyobuyo_client/presentation/pages/main_page/component/create_order_or_delivery_sheet.dart';
import 'package:uyobuyo_client/presentation/pages/main_page/component/drawer_component.dart';
import 'package:uyobuyo_client/presentation/pages/main_page/component/main_bottom_sheet_component.dart';
import 'package:uyobuyo_client/presentation/pages/main_page/component/order_accepted.dart';
import 'package:uyobuyo_client/presentation/pages/main_page/component/order_detail.dart';
import 'package:uyobuyo_client/presentation/pages/main_page/component/order_dialog.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MainPage extends BaseScreen {
  const MainPage({super.key});

  @override
  State<BaseScreen> createState() => _MainPageState();
}

class _MainPageState extends BaseState<MainPage> {
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();
  final GeocoderService geocoderService = GeocoderService(apiKey: 'dc40f6be-0f3d-4889-ba75-fcb1adac0b7c');
  String currentLocationName = '';
  LatLangResultModel? fullLocationName;

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
    context.read<MainBloc>().add(const MainEvent.initMainPage());
    context.read<AuthBloc>().add(const AuthEvent.getUserData());
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
    // final Map<dynamic, dynamic> address = await geocoderService.convertToAddress(
    //   latitude: currentPosition.latitude,
    //   longitude: currentPosition.longitude,
    // );
    await getAddressByLatLong(
      latitude: currentPosition.latitude,
      longitude: currentPosition.longitude,
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

  String? whereToAddress = MainBloc.whereToAddress;
  String? whereToSubAddress = MainBloc.whereToSubAddress;
  String? whereFromAddress = MainBloc.whereFromAddress;
  String? whereFromSubAddress = MainBloc.whereFromSubAddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: const DrawerComponent(),
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
            child: BlocBuilder<MainBloc, MainState>(
              buildWhen: (prev, current) {
                return current.maybeWhen(initMain: () => true, openMapForChooseAddress: (_) => true, openOrder:()=>true,orElse: () => false);
              },
              builder: (context, state) {
                return state.maybeWhen(initMain: () {
                  return Column(
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
                      MainBottomSheetComponent(
                        ifVisibleBottom: ifVisibleBottom,
                        onTapOrder: () {
                          if (whereFromAddress == null || whereFromSubAddress == null) {
                            whereFromAddress = currentLocationName;
                            whereFromSubAddress = (fullLocationName != null
                                ? "${fullLocationName!.address.road != null ? "${fullLocationName!.address.road}," : ""} ${fullLocationName!.address.city!.isNotEmpty ? "${fullLocationName!.address.city}," : ""}"
                                : "");
                          }
                          createOrderOrDeliverySheetComponent(
                              context: context,
                              title: whereFromAddress == null ? currentLocationName : whereFromAddress!,
                              subtitle: whereFromSubAddress == null
                                  ? (fullLocationName != null
                                      ? "${fullLocationName!.address.road != null ? "${fullLocationName!.address.road}," : ""} ${fullLocationName!.address.city!.isNotEmpty ? "${fullLocationName!.address.city}," : ""}"
                                      : "")
                                  : whereFromSubAddress!,
                              onTapFrom: () {
                                orderModalBottomSheetComponent(
                                    context: context,
                                    title: "Откуда",
                                    addressControllerText: whereFromAddress != null ? whereFromAddress! : currentLocationName,
                                    onTap: () {
                                      Navigator.pop(context);
                                    });
                              },
                              onTapTo: () async {
                                orderModalBottomSheetComponent(
                                    context: context,
                                    title: "Kуда",
                                    addressControllerText: whereToAddress,
                                    btnTitle: context.loc.proceed,
                                    onTap: () {
                                      Navigator.pop(context);
                                      orderDetailModalBottomSheetComponent(context: context);
                                    });
                              },
                              onTapBtn: () {
                                orderModalBottomSheetComponent(
                                    context: context,
                                    title: "Kуда",
                                    addressControllerText: whereToAddress,
                                    btnTitle: context.loc.proceed,
                                    onTap: () {
                                      Navigator.pop(context);
                                      orderDetailModalBottomSheetComponent(context: context);
                                    });
                              });
                        },
                        onTapDelivery: () {
                          createOrderOrDeliverySheetComponent(
                              context: context,
                              title: whereFromAddress == null ? currentLocationName : whereFromAddress!,
                              subtitle: whereFromSubAddress == null
                                  ? (fullLocationName != null
                                      ? "${fullLocationName!.address.road != null ? "${fullLocationName!.address.road}," : ""} ${fullLocationName!.address.city!.isNotEmpty ? "${fullLocationName!.address.city}," : ""}"
                                      : "")
                                  : whereFromSubAddress!,
                              onTapFrom: () {
                                orderModalBottomSheetComponent(
                                    context: context,
                                    title: "Откуда",
                                    addressControllerText: whereFromAddress != null ? whereFromAddress! : currentLocationName,
                                    onTap: () {
                                      Navigator.pop(context);
                                    });
                              },
                              onTapTo: () async {
                                orderModalBottomSheetComponent(
                                    context: context,
                                    title: "Kуда",
                                    addressControllerText: whereToAddress,
                                    btnTitle: context.loc.proceed,
                                    onTap: () {
                                      Navigator.pop(context);
                                      deliveryDetailDialog(context: context);
                                    });
                              },
                              onTapBtn: () {
                                orderModalBottomSheetComponent(
                                    context: context,
                                    title: "Kуда",
                                    addressControllerText: whereToAddress,
                                    btnTitle: context.loc.proceed,
                                    onTap: () {
                                      Navigator.pop(context);
                                      deliveryDetailDialog(context: context);
                                    });
                              });
                        },
                      )
                    ],
                  );
                }, openMapForChooseAddress: (whereTo) {
                  if (whereTo) {
                    MainBloc.whereToAddress = currentLocationName;
                    MainBloc.whereToSubAddress = (fullLocationName != null
                        ? "${fullLocationName!.address.road != null ? "${fullLocationName!.address.road}," : ""} ${fullLocationName!.address.city!.isNotEmpty ? "${fullLocationName!.address.city}," : ""}"
                        : "");
                  } else {
                    MainBloc.whereFromAddress = currentLocationName;
                    MainBloc.whereFromSubAddress = (fullLocationName != null
                        ? "${fullLocationName!.address.road != null ? "${fullLocationName!.address.road}," : ""} ${fullLocationName!.address.city!.isNotEmpty ? "${fullLocationName!.address.city}," : ""}"
                        : "");
                  }
                  return ChooseLocationInMapPage(
                    getCurrentLocation: () async {
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
                    selectAddress: currentLocationName,
                    selectSubAddress: (fullLocationName != null
                        ? "${fullLocationName!.address.road != null ? "${fullLocationName!.address.road}," : ""} ${fullLocationName!.address.city!.isNotEmpty ? "${fullLocationName!.address.city}," : ""}"
                        : ""),
                    indicatorColor: AppTheme.colors.primary,
                  );
                }, openOrder: () {
                  return const OrderAcceptedPage();
                }, orElse: () {
                  return const SizedBox();
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
