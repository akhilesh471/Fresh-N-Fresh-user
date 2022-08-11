import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fresh_n_fresh/applications/help_&_support/send_message.dart';
import 'package:fresh_n_fresh/presentation/help_&_support/single_message.dart';
import 'package:fresh_n_fresh/presentation/nabvar/sidebar.dart';
var currentUserId;
class Message extends StatefulWidget {

  const Message({Key? key}) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}
class _MessageState extends State<Message> {
  final _messageController=TextEditingController();
   @override
  void initState() {
     currentIndex=2;
   currentUserId = FirebaseAuth.instance.currentUser?.uid;
    super.initState();
  
  }

  @override
  Widget build(BuildContext context) {
    print(currentUserId);
  
    return Scaffold(
      appBar: AppBar(),
      drawer: Sidebar(),
      body: SafeArea(
          child: Container(
        child: Column(children: [
          Expanded(
              child: Container(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection("userData")
                  .doc(currentUserId)
                  .collection("messages")
                  .doc('r2H4ypKAh5T0TcNjYDHcf72rcBE3')
                  .collection('chats')
                  .orderBy("date", descending: true)
                  .snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
                if (snapshot.connectionState == ConnectionState.active) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      reverse: true,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        bool isMe = snapshot.data!.docs[index]['senderId'] ==
                            currentUserId;
                        return SingleMessage(time:snapshot.data!.docs[index]['date'] ,
                            message: snapshot.data!.docs[index]['message'],
                            isMe: isMe);
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text(
                          "an error occured! please check your internet connection"),
                    );
                  } else {
                    return Center(
                      child: Text("say hi to your friend"),
                    );
                  }
                } else { 
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
          )),
          Container(
            color: Colors.grey[200],
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              children: [
                Flexible(
                    child: TextField(
                  controller: _messageController,
                  decoration: InputDecoration(
                      hintText: "Enter Message", border: InputBorder.none),
                )),
                IconButton(
                    onPressed: () {
sendMesssage(controller: _messageController, currentuserId: currentUserId);                    },
                    icon: Icon(
                      Icons.send,
                      color: Theme.of(context).colorScheme.secondary,
                    ))
              ],
            ),
          ),
        ]),
      )),
    );
  }
}
