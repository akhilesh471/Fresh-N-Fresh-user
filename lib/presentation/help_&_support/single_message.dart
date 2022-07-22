import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class SingleMessage extends StatelessWidget {
  final String message;
  final bool isMe;
final Timestamp time;
  const SingleMessage({super.key, required this.message, required this.isMe, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment:isMe ? CrossAxisAlignment.end:CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.all(4),
              constraints: BoxConstraints(maxWidth: 200),
              decoration: BoxDecoration(
                  color: isMe ? Colors.blue : Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Text(message,style:TextStyle(color:isMe?Colors.white:Colors.black,fontSize: 16))
            )
          ],
        ),
          Container(  margin: EdgeInsets.all(5),height: 20,child: Text('${DateFormat.yMd().add_jm().format(time.toDate())}'),),SizedBox(height: 15,)
      ],
    );
  }
}
