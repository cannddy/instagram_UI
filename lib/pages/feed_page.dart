

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram/pages/ChatList.dart';
import 'package:instagram/widgets/posts_widget.dart';

class feedPage extends StatefulWidget {
  const feedPage({super.key});

  @override
  State<feedPage> createState() => _feedPageState();
}

class _feedPageState extends State<feedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.message_outlined),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ChatList()));
            },
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            height: 80,
            child:ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder:(context, index) {
                final String url="https://picsum.photos/seed/$index/400/400";
                  return CircleAvatar(
                    backgroundImage: NetworkImage(url),
                    radius: 45,
                  );
              },
            )
             ),
          ListView.builder(
            physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 50,
              itemBuilder: ((context, index) {
                return PostWidget(index: index,);
              })),
        ],
      ),
    );
  }
}
