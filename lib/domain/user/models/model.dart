
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? id;
  final String name;
  final String number;
   String? address;
  String? image;
  final bool disable;
  final String email;
  final Timestamp date;
  UserModel({ required this.email,required this.name,required this.number,required this.disable,required this.date,this.id,this.address,this.image});
  
  Map<String, dynamic> toJson() {
    return {
      "disable":disable,
      'name': name,
      "id": id,
      "number": number,
      "address": address,
      "image": image,
      "date":date,
      "email":email,
    };
  }

  static UserModel fromJson(Map<String, dynamic> json) {
    return UserModel(email: json["email"],
         disable: json["disable"],
        id: json["id"],
        name: json['name'],
        number: json['number'],
        address: json['address'],
        image: json["image"],
        date: json["date"] );
  }
}
