import 'package:cloud_firestore/cloud_firestore.dart';

class WishList {
  String? id;
  final String userId;
  final String productName;
  final String quantity;
  final num amount;
  final String productId;
  final Timestamp date;
  dynamic image;
  final String units;
final bool isWish;

  WishList( 
      {required this.isWish, required this.units,
      required this.userId,
      required this.productName,
      required this.quantity,
      required this.amount,
      required this.productId,
      required this.date,
      this.image,
      this.id});

  Map<String, dynamic> toJson() {
    return {
       'isWish':isWish,
      'id': id,
      'userId': userId,
      'productName': productName,
      'quantity': quantity,
      'amount': amount,
      'productId': productId,
      'image': image,
      'date': date,
      'units': units,
    };
  }

  static WishList fromJson(Map<String, dynamic> json) {
    return WishList(
        id: json['id'],
        userId: json['userId'],
        productName: json['productName'],
        quantity: json['quantity'],
        amount: json['amount'],
        image: json['image'],
        productId: json['productId'],
        date: json['date'],
        units: json['units'],
        isWish: json['isWish']) ;
  }
}
