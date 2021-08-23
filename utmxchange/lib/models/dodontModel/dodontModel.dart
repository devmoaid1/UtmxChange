class DoDont {
  String id;
  String title;
  String description;
  String type;

  //constructor
  DoDont({this.id, this.title, this.description, this.type});

  DoDont.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'].toString(),
            title: json['title'],
            description: json['description'],
            type: json['type']);

  Map<String, dynamic> toJson() =>
      {'id': id, 'title': title, 'description': description, 'type': type};
}
