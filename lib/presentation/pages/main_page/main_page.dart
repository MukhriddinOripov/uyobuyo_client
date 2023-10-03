import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
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
  late YandexMapController controller;
  final animation = const MapAnimation(type: MapAnimationType.linear, duration: 0.5);
  final List<MapObject> mapObjects = [];
  List<MapObject> placeMarks = [];
  late Position position;
  String currentLocationName = '';

  @override
  void initState() {
    super.initState();
    AndroidYandexMap.useAndroidViewSurface = false;
    _checkLocationPermission();
  }

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

  moveCurrentLocation() async {
    await controller.moveCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: Point(latitude: position.latitude, longitude: position.longitude),
            zoom: 16,
          ),
        ),
        animation: animation);
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

  addObjectToMap() async {
    placeMarks.add(
      PlacemarkMapObject(
        onTap: (PlacemarkMapObject placeMap, Point point) {},
        mapId: const MapObjectId('position'),
        opacity: 1,
        // icon: PlacemarkIcon.single(
        //   PlacemarkIconStyle(
        //     scale: 0.2,
        //     image: BitmapDescriptor.fromAssetImage(AppImages.flagUz),
        //   ),
        // ),
        point: Point(
          latitude: position.latitude,
          longitude: position.longitude,
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
          currentLocationName =
              "${data.address.houseNumber ?? ""}, ${data.address.road ?? ""}, ${data.address.county}, ${data.address.city}";
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: drawer(),
      body: Stack(
        children: [
          YandexMap(
            mapObjects: mapObjects,
            onMapCreated: (YandexMapController yandexMapController) async {
              controller = yandexMapController;
            },
            onMapTap: (Point point) {
              double latitude = point.latitude;
              double longitude = point.longitude;
              placeMarks.add(
                PlacemarkMapObject(
                  onTap: (PlacemarkMapObject placeMap, Point point) {},
                  mapId: const MapObjectId('selected_position'),
                  opacity: 1,
                  icon: PlacemarkIcon.single(
                    PlacemarkIconStyle(
                      scale: 0.6,
                      image: BitmapDescriptor.fromAssetImage(AppImages.flagUz),
                    ),
                  ),
                  point: Point(
                    latitude: latitude,
                    longitude: longitude,
                  ),
                ),
              );
              getAddressByLatLong(latitude: latitude, longitude: longitude);
              setState(() {
                mapObjects.addAll(placeMarks);
              });
            },
          ),
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            bottom: 0,
            child: Icon(
              Icons.location_on_sharp,
              size: 40,
              color: Colors.red,
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
            top: MediaQuery.sizeOf(context).height / 2,
            right: 16.w,
            child: GestureDetector(
              onTap: () {
                _checkLocationPermission();
              },
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppTheme.colors.white,
                ),
                child: const Icon(Icons.my_location),
              ),
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
                          style: AppTheme.data.textTheme.labelMedium
                              ?.copyWith(fontWeight: FontWeight.w400, color: AppTheme.colors.black60),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          "ID:100104",
                          style: AppTheme.data.textTheme.labelMedium
                              ?.copyWith(fontWeight: FontWeight.w400, color: AppTheme.colors.primary),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Divider(color: AppTheme.colors.black20, height: 0.1),
              drawerComponent(onTap: () {}, icon: AppIcons.drawer, label: "История заказов"),
              drawerComponent(onTap: () {}, icon: AppIcons.drawer, label: "Настройки"),
              drawerComponent(onTap: () {}, icon: AppIcons.drawer, label: "FAQ"),
              drawerComponent(onTap: () {}, icon: AppIcons.drawer, label: "Служба поддержки"),
              drawerComponent(onTap: () {}, icon: AppIcons.drawer, label: "Инфо"),
              const Spacer(),
              drawerComponent(onTap: () {}, icon: AppIcons.drawer, label: "Выйти", textColor: AppTheme.colors.red),
            ],
          ),
        ),
      );

  Widget drawerComponent({required Function() onTap, required String icon, required String label, Color? textColor}) {
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
                  color: AppTheme.colors.black80,
                ),
                const SizedBox(width: 12),
                Text(
                  label,
                  style: AppTheme.data.textTheme.bodySmall
                      ?.copyWith(fontWeight: FontWeight.w500, color: textColor ?? AppTheme.colors.black80),
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
