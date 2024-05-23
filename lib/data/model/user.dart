import 'dart:convert';

class User {
  final image;
  final String phone;
  final String name;
  final String address;
  final String postalCode;
  final double lat;
  final double lng;

  User({
    required this.image,
    required this.phone,
    required this.name,
    required this.address,
    required this.postalCode,
    required this.lat,
    required this.lng,
  });
  Map<String, dynamic> toMap() {
    return {
      "image": image,
      "phone": phone,
      "name": name,
      "address": address,
      "postal_code": postalCode,
      "lat": lat,
      "lng": lng,
    };
  }

  factory User.fromJson(String? jsonString) {
    Map<String, dynamic> map = jsonDecode(jsonString!);
    return User(
        image: map["image"],
        phone: map["phone"],
        name: map["name"],
        address: map["address"],
        postalCode: map["postal_code"],
        lat: map["lat"],
        lng: map["lng"]);
  }
}
