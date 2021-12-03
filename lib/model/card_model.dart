class CardModel {
  //注： 这里不加late,会导致fromJson前面的Card报错
  late String title;
  late String author;
  late String subtitle;
  late bool isActive = false;
  late int num;

  CardModel(
      {required this.title,
      required this.author,
      required this.subtitle,
      required this.isActive,
      required this.num});

  CardModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    author = json['author'];
    subtitle = json['subtitle'];
    isActive = json['isActive'];
    num = json['num'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['author'] = author;
    data['subtitle'] = subtitle;
    return data;
  }
}
