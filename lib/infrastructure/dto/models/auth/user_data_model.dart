class UserDataModel {
  final UserData data;
  final bool success;

  UserDataModel({
    required this.data,
    required this.success,
  });

  factory UserDataModel.fromJson(Map<String, dynamic> json) => UserDataModel(
        data: UserData.fromJson(json["data"]),
        success: json["success"],
      );
}

class UserData {
  final dynamic id;
  final String login;
  final String phoneNumber;
  final String? name;
  final String role;
  final String? gender;
  final bool active;
  final String language;
  final dynamic hasActiveOrder;
  final dynamic imageUrl;

  UserData({
    required this.id,
    required this.login,
    required this.phoneNumber,
    required this.name,
    required this.role,
    required this.gender,
    required this.active,
    required this.language,
    required this.hasActiveOrder,
    required this.imageUrl,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json["id"],
        login: json["login"],
        phoneNumber: json["phone_number"],
        name: json["name"],
        role: json["role"],
        gender: json["gender"],
        active: json["active"],
        language: json["language"],
        hasActiveOrder: json["has_active_order"],
        imageUrl: json["image_url"],
      );
}
