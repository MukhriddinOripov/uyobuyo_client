class IRoutes {
  const IRoutes();

  String get baseUrl => 'https://api-dev.uyobuyo.uz';

  ///for auth
  String get sendSms => '/api/v1/auth/customer/send_sms';
  String get confirmAuth => '/api/v1/auth/customer/confirm';
  String get register => '/api/v1/customer/update_after_auth';
  String get updateProfileImage => '/api/v1/customer/attachment';
}
