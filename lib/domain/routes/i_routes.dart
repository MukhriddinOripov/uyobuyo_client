class IRoutes {
  const IRoutes();

  String get baseUrl => 'https://api-dev.uyobuyo.uz';

  ///for auth
  String get sendSms => '/api/v1/auth/customer/send_sms';
  String get confirmAuth => '/api/v1/auth/customer/confirm';
  String get register => '/api/v1/customer/update_after_auth';
  String get updateProfileImage => '/api/v1/customer/attachment';
  String get userData => '/api/v1/customer';
  String get support => '/api/v1/fs-doc/support';
  String get info => '/api/v1/fs-doc/info';
  String get faq => '/api/v1/fs-doc/faq';
}
