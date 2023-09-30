import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:uyobuyo_client/infrastructure/common/constants/constants.dart';
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

  @override
  void initState() {
    AndroidYandexMap.useAndroidViewSurface = false;
    _handleLocationPermission();
    super.initState();
  }

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      drawer: drawer(),
      body: Stack(
        children: [
          const YandexMap(),
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
            top: MediaQuery.sizeOf(context).height / 2,
            left: 16.w,
            child: GestureDetector(
              onTap: () => _handleLocationPermission(),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppTheme.colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: SvgPicture.asset(AppIcons.drawer),
              ),
            ),
          )
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
