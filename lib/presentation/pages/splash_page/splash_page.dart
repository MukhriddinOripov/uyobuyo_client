import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:uyobuyo_client/infrastructure/services/shared_pref_service.dart';
import 'package:uyobuyo_client/presentation/assets/images.dart';
import 'package:uyobuyo_client/presentation/routes/entity/routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  late AnimationController controller1;
  late Animation<double> animation1;
  late AnimationController controller2;
  late Animation<double> animation2;
  late AnimationController controller3;
  late Animation<double> animation3;
  bool controllerCompleted = false;
  bool controller2Completed = false;

  var isRegistered = false;
  var isFirstEntered = false;

  @override
  void initState() {
    super.initState();
    controller1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    animation1 = Tween<double>(begin: 1.0, end: 0.0).animate(controller1);

    controller2 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    animation2 = Tween<double>(begin: 1.0, end: 0.0).animate(controller2);

    controller3 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    animation3 = Tween<double>(begin: 0.5, end: 1.0).animate(controller3);

    controller1.addListener(() {
      setState(() {
        controllerCompleted = controller1.isCompleted;
      });
    });
    controller2.addListener(() {
      setState(() {
        controller2Completed = controller2.isCompleted;
      });
    });
    controller3.addListener(() {
      if (!controller2.isCompleted) {
        setState(() {
          controller2Completed = false;
          controllerCompleted = false;
        });
      }
    });
    performAnimationsAndNavigate(context);
  }

  Future<void> performAnimationsAndNavigate(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 500));
    await controller1.forward();
    await controller2.forward();
    await controller3.forward();
    await Future.delayed(const Duration(milliseconds: 500));
    SharedPrefService prefs = await SharedPrefService.initialize();
    String accessToken = prefs.getAccessToken;
    if (!context.mounted) return;
    if (accessToken.isNotEmpty) {
      context.go(Routes.mainPage.path);
    } else {
      context.go(Routes.onboardPage.path);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: (!controllerCompleted || !controller2Completed)
            ? AnimatedBuilder(
                animation: !controllerCompleted ? controller1 : controller2,
                builder: (context, child) {
                  return Transform.translate(
                    offset: Offset((!controllerCompleted ? animation1.value : 0) * MediaQuery.sizeOf(context).width, 0),
                    child: Opacity(
                      opacity: !controllerCompleted ? 1 : animation2.value,
                      child: SvgPicture.asset(
                        AppImages.splashLoading,
                        width: double.infinity,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  );
                },
              )
            : AnimatedBuilder(
                animation: controller3,
                builder: (context, child) {
                  return Opacity(
                    opacity: animation3.value,
                    child: Transform.scale(
                      scale: animation3.value,
                      child: SvgPicture.asset(
                        AppImages.splashIcon,
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }

  @override
  void dispose() {
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    super.dispose();
  }
}
