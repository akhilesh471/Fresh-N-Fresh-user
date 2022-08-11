import 'package:cloud_firestore/cloud_firestore.dart';

class Orders {
  String? id;
  final String userId;
  final String userName;
  final String address;
  final String productName;
  final num quantity;
  final num amount;
  String? paymentId;
  final String productId;
  final Timestamp date;
  dynamic image;
  final String email;
  final String number;
  String? status;
  final String units;

  Orders(
      {this.status,
      required this.email,
      required this.number,
      required this.units,
      required this.userId,
      required this.userName,
      required this.address,
      required this.productName,
      required this.quantity,
      required this.amount,
      this.paymentId,
      required this.productId,
      required this.date,
      this.image,
      this.id});

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'userName': userName,
      'address': address,
      'productName': productName,
      'quantity': quantity,
      'amount': amount,
      'paymentId': paymentId,
      'productId': productId,
      'image': image,
      'date': date,
      'status': status,
      'email': email,
      'PhNumber': number,
      'units': units,
    };
  }

  static Orders fromJson(Map<String, dynamic> json) {
    return Orders(
        id: json['id'],
        userId: json['userd'],
        userName: json['userName'],
        address: json['address'],
        productName: json['productName'],
        quantity: json['quantity'],
        amount: json['amount'],
        image: json['image'],
        paymentId: json['paymentId'],
        productId: json['productId'],
        date: json['date'],
        email: json['email'],
        number: json['PhNumber'],
        units: json['units']);
  }
}
