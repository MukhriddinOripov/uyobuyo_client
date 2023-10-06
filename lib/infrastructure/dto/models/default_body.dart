class DefaultModel {
  DefaultModel({
    this.success,
    this.message,
    this.data,
  });

  final dynamic success;
  final dynamic message;
  final dynamic data;

  factory DefaultModel.fromJson(Map<String, dynamic> json) => DefaultModel(
        success: json["success"],
        message: json["message"],
        data: json["data"],
      );
}
