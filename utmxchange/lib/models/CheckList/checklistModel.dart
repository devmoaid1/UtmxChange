class CheckList {
  String id, title, type;
  bool value;

  CheckList({this.id, this.title, this.type, this.value = false});

  CheckList.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'].toString(),
            title: json['title'],
            type: json['type'],
            value: json['value']);

  Map<String, dynamic> toJson() =>
      {'id': id, 'title': title, 'type': type, 'value': value};
}
