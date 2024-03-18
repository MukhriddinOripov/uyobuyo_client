class RegisterModel {
  final RegisterData data;
  final bool success;

  RegisterModel({
    required this.data,
    required this.success,
  });

  factory RegisterModel.fromJson(Map<String, dynamic> json) => RegisterModel(
        data: RegisterData.fromJson(json["data"]),
        success: json["success"],
      );
}

class RegisterData {
  final int id;
  final String login;
  final String phoneNumber;
  final String name;
  final String? role;
  final String gender;
  final bool active;
  final String language;
  final dynamic imageUrl;
  final List<int> birthDate;
  final String city;

  RegisterData({
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

  factory RegisterData.fromJson(Map<String, dynamic> json) => RegisterData(
        id: json["id"],
        login: json["login"],
        phoneNumber: json["phone_number"],
        name: json["name"],
        role: json["role"],
        gender: json["gender"],
        active: json["active"],
        language: json["language"],
        imageUrl: json["image_url"],
        birthDate: List<int>.from(json["birth_date"].map((x) => x)),
        city: json["city"],
      );
}
