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
  final dynamic name;
  final dynamic gender;
  final bool active;
  final String language;
  final dynamic imageUrl;
  final DateTime? birthDate;
  final dynamic city;

  UserData({
    required this.id,
    required this.login,
    required this.phoneNumber,
    required this.name,
    required this.gender,
    required this.active,
    required this.language,
    required this.imageUrl,
    required this.birthDate,
    required this.city,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json["id"],
        login: json["login"],
        phoneNumber: json["phone_number"],
        name: json["name"],
        gender: json["gender"],
        active: json["active"],
        language: json["language"],
        imageUrl: json["image_url"],
        birthDate: json["birth_date"] != null
            ? DateTime(json["birth_date"][0], json["birth_date"][1], json["birth_date"][2])
            : null,
        city: json["city"],
      );
}
