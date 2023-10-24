import 'coordinate.dart';

/// A set of routes for the entire app.
class Routes implements Coordinate {
  const Routes._({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;

  static const splashPage = Routes._(name: 'splash_page', path: '/splash_page');
  static const onboardPage = Routes._(name: 'onboard_page', path: '/onboard_page');
  static const checkPhonePage = Routes._(name: 'check_phone_page', path: '/check_phone_page');
  static const otpPage = Routes._(name: 'otp_page', path: '/otp_page');
  static const registerPage = Routes._(name: 'register_page', path: '/register_page');
  static const mainPage = Routes._(name: 'main_page', path: '/main_page');
  static const orderDetailAfterCreatePage = Routes._(name: 'order_detail_after_create_page', path: '/order_detail_after_create_page');
  static const orderCancelPage = Routes._(name: 'order_cancel_page', path: '/order_cancel_page');
  static const orderHistoryModule = Routes._(name: 'order_history_module', path: '/order_history_module');
  static const orderHistoryDetailModule = Routes._(name: 'order_history_detail_module', path: '/order_history_detail_module');
  static const profileDetailModule = Routes._(name: 'profile_detail_module', path: '/profile_detail_module');
  static const editProfileModule = Routes._(name: 'edit_profile_module', path: '/edit_profile_module');
  static const settingModule = Routes._(name: 'setting_module', path: '/setting_module');
  static const supportModule = Routes._(name: 'support_module', path: '/support_module');
  static const faqModule = Routes._(name: 'faq_module', path: '/faq_module');
  static const faqDetailModule = Routes._(name: 'faq_detail_module', path: '/faq_detail_module');

  @override
  String toString() => 'name=$name, path=$path';
}
