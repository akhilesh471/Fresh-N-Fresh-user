import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';


Future<void> sendMesssage(
    {required TextEditingController controller,
    required String currentuserId}) async {
  String message = controller.text;
  controller.clear();
  await FirebaseFirestore.instance
      .collection('userData')
      .doc(currentuserId)
      .collection('messages')
      .doc('r2H4ypKAh5T0TcNjYDHcf72rcBE3')
      .collection('chats')
      .add({
    "senderId": currentuserId,
    "receiverId": 'r2H4ypKAh5T0TcNjYDHcf72rcBE3',
    "message": message,
    "type": "text",
    "date": DateTime.now()
  }).then((value) {
    FirebaseFirestore.instance
        .collection('userData')
        .doc(currentuserId)
        .collection('messages')
        .doc('r2H4ypKAh5T0TcNjYDHcf72rcBE3')
        .set({'lastmsg': message});
  });

await FirebaseFirestore.instance.collection('userData').doc('r2H4ypKAh5T0TcNjYDHcf72rcBE3').collection('messages').doc(currentuserId).collection('chats').add({
   "senderId": currentuserId,
    "receiverId": 'r2H4ypKAh5T0TcNjYDHcf72rcBE3',
    "message": message,
    "type": "text",
    "date": DateTime.now()
}).then((value) {
  FirebaseFirestore.instance.collection("userData").doc('r2H4ypKAh5T0TcNjYDHcf72rcBE3').collection('messages').doc(currentuserId).set({"lastmsg":message});
});

}
