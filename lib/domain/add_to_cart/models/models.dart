import 'package:cloud_firestore/cloud_firestore.dart';

class Cart {
  String? id;
 
  final String units;
  final String productName;
  final num quantity;
  final num amount;
final num unitAmount;
  final String productId;
  final Timestamp date;
 dynamic image;
 

Cart( {required this.units,
      required this.productName,
      required this.quantity,
      required this.amount,
      required this.unitAmount,
     
      required this.productId,
      required this.date,
      required this.image,
      this.id});

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'units':units,
      'productName': productName,
      'quantity': quantity,
      'unitAmount':unitAmount,
      'amount': amount,
      'productId': productId,
      'image':image,
      'date': date
    };
  }

  static Cart fromJson(Map<String, dynamic> json) {
    return Cart(
        id: json['id'],
       unitAmount: json['unitAmount'],
        productName: json['productName'],
        quantity: json['quantity'],
        amount: json['amount'],
        image: json['image'],
     
        productId: json['productId'],
        date: json['date'], units: json['units']);
  }
}
