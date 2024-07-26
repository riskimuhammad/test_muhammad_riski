class MenuEnity {
  String? icon;
  String? title;

  MenuEnity(this.icon, this.title);

  MenuEnity.fromJson(dynamic json) {
    icon = json["icon"];
    title = json["title"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["icon"] = icon;
    data["title"] = title;

    return data;
  }
}
