class NoticeInfo {
  String id;
  String title;
  String type;
  String description;
  String date;
  String attatchment;

  NoticeInfo(
      {this.id,
      this.title,
      this.type,
      this.date,
      this.description,
      this.attatchment});

  NoticeInfo.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'].toString(),
            title: json['title'],
            description: json['description'],
            date: json['date'],
            type: json['type'],
            attatchment: json['attatchment']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'date': date,
        'type': type,
        'attatchment': attatchment
      };
}
