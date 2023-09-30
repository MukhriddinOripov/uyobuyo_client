import 'coordinate.dart';

/// A set of routes for the entire app.
class Routes implements Coordinate {
  const Routes._({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;

  static const onboardPage = Routes._(name: 'onboard_page', path: '/onboard_page');
  static const checkPhonePage = Routes._(name: 'check_phone_page', path: '/check_phone_page');
  static const otpPage = Routes._(name: 'otp_page', path: '/otp_page');
  static const registerPage = Routes._(name: 'register_page', path: '/register_page');
  static const mainPage = Routes._(name: 'main_page', path: '/main_page');
  @override
  String toString() => 'name=$name, path=$path';
}
