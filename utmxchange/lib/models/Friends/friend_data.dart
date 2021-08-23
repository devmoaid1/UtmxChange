class FriendDetails {
  String id;
  String shortname;
  String shortdesc;
  String url;
  String description;
  String phone;
  String email;
  FriendDetails(
      {this.id,
      this.shortname,
      this.shortdesc,
      this.url,
      this.description,
      this.email,
      this.phone});

  FriendDetails.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'].toString(),
          shortname: json['shortname'],
          description: json['description'],
          shortdesc: json['shortdesc'],
          url: json['url'],
          phone: json['phone'],
          email: json['email'],
        );

  Map<String, dynamic> toJson() => {
        'id': id,
        'shortname': shortname,
        'description': description,
        'shortdesc': shortdesc,
        'url': url,
        'phone': phone,
        'email': email,
      };
}
