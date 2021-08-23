class ProfileInfo {
  String id;
  String image;
  String name;
  String age;
  String university;
  String country;
  String description;
  String semester;
  String faculty;
  String email;
  String username;
  String password;
  String passport;
  String gender;
  bool registerStatus;
  String phone;
  String address;

  ProfileInfo(
      {this.id,
      this.image,
      this.name,
      this.age,
      this.university,
      this.country,
      this.description,
      this.semester,
      this.faculty,
      this.email,
      this.username,
      this.passport,
      this.password,
      this.gender,
      this.registerStatus,
      this.phone,
      this.address});

  ProfileInfo.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'].toString(),
            image: json['image'],
            description: json['description'],
            name: json['name'],
            age: json['age'],
            university: json['university'],
            country: json['country'],
            semester: json['semester'],
            faculty: json['faculty'],
            email: json['email'],
            username: json['username'],
            passport: json['passport'],
            password: json['password'],
            gender: json['gender'],
            registerStatus: json['registerStatus'],
            phone: json['phone'],
            address: json['address']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'image': image,
        'description': description,
        'name': name,
        'age': age,
        'university': university,
        'country': country,
        'semester': semester,
        'faculty': faculty,
        'email': email,
        'username': username,
        'passport': passport,
        'password': password,
        'gender': gender,
        'registerStatus': registerStatus,
        'phone': phone
      };
}
