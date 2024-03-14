class AuthConfirm {
  final AuthConfirmData data;
  final bool success;

  AuthConfirm({
    required this.data,
    required this.success,
  });

  factory AuthConfirm.fromJson(Map<String, dynamic> json) => AuthConfirm(
        data: AuthConfirmData.fromJson(json["data"]),
        success: json["success"],
      );
}

class AuthConfirmData {
  final String token;
  final User user;
  final bool hasExisted;

  AuthConfirmData({
    required this.token,
    required this.user,
    required this.hasExisted,
  });

  factory AuthConfirmData.fromJson(Map<String, dynamic> json) => AuthConfirmData(
        token: json["token"],
        user: User.fromJson(json["user"]),
        hasExisted: json["has_existed"],
      );
}

class User {
  final int id;
  final String login;
  final String phoneNumber;
  final dynamic name;
  final dynamic role;
  final dynamic gender;
  final bool active;
  final String language;
  final dynamic imageUrl;
  final dynamic birthDate;
  final dynamic city;

  User({
    required this.id,
    required this.login,
    required this.phoneNumber,
    required this.name,
    required this.role,
    required this.gender,
    required this.active,
    required this.language,
    required this.imageUrl,
    required this.birthDate,
    required this.city,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        login: json["login"],
        phoneNumber: json["phone_number"],
        name: json["name"],
        role: json["role"],
        gender: json["gender"],
        active: json["active"],
        language: json["language"],
        imageUrl: json["image_url"],
        birthDate: json["birth_date"],
        city: json["city"],
      );
}
