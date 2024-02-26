class DrawerModel {
  final List<DrawerData> data;
  final bool success;

  DrawerModel({
    required this.data,
    required this.success,
  });

  factory DrawerModel.fromJson(Map<String, dynamic> json) => DrawerModel(
        data: List<DrawerData>.from(json["data"].map((x) => DrawerData.fromJson(x))),
        success: json["success"],
      );
}

class DrawerData {
  final int id;
  final String title;
  final String content;

  DrawerData({
    required this.id,
    required this.title,
    required this.content,
  });

  factory DrawerData.fromJson(Map<String, dynamic> json) => DrawerData(
        id: json["id"],
        title: json["title"],
        content: json["content"],
      );
}
