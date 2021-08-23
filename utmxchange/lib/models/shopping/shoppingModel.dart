class ShoppingCard {
  String id;
  String title;
  String address;
  String type;
  String distance;
  String priceRannge;

  ShoppingCard(
      {this.id,
      this.title,
      this.address,
      this.type,
      this.distance,
      this.priceRannge});

  ShoppingCard.fromJson(Map<String, dynamic> json)
      : this(
            id: json['id'].toString(),
            title: json['title'],
            address: json['address'],
            type: json['type'],
            distance: json['distance'],
            priceRannge: json['priceRannge']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'address': address,
        'type': type,
        'distance': distance,
        'priceRannge': priceRannge
      };
}
