import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram/pages/ChatPage.dart';
import 'package:instagram/widgets/buttons/search_text_field.dart';
import '../data/chats_data.dart';

class ChatList extends StatefulWidget {
  const ChatList({super.key});

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("Direct",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
          leading: BackButton(
            onPressed: (() {
              Navigator.pop(context);
            }),
          ),
          backgroundColor: Colors.black,
          elevation: 10,
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => {},
            ),
          ],
        ),
        body: ListView(children: [
          SearchTextField(),
          ListView.builder(
            shrinkWrap: true,
            itemCount: userChatList.length,
            itemBuilder: (context, index) {
              return ChatTile(
                details: userChatList[index],
              );
            },
          )
        ]));
  }
}

class ChatTile extends StatelessWidget {
  final Map<String, String> details;
  const ChatTile({
    Key? key,
    required this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => chatPage()));
      },
      child: Container(
        padding: EdgeInsets.all(12),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(details['profile'] ?? ''),
            ),
            SizedBox(
              width: 13,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  details['name'] ?? '',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                Text(details['last_message'] ?? '',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ))
              ],
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.camera_alt_outlined, color: Colors.white),
              onPressed: () => {},
              iconSize: 23,
            ),
          ],
        ),
      ),
    );
  }
}
