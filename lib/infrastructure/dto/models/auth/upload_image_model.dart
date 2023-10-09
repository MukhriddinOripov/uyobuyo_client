class UpdateImage {
  final String? data;
  final bool success;

  UpdateImage({
    required this.data,
    required this.success,
  });

  factory UpdateImage.fromJson(Map<String, dynamic> json) => UpdateImage(
    data: json["data"],
    success: json["success"],
  );
}