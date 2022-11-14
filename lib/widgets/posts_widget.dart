import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PostWidget extends StatefulWidget {
  final int index;
  
  const PostWidget({super.key, required this.index});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    final String url="https://picsum.photos/seed/${widget.index}/400/400";
    final String profilUrl="https://picsum.photos/seed/${(widget.index)+1*2}/400/400";
    return Container(
      padding: EdgeInsets.all(8),
      //height: 100,
      color: Colors.black,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(profilUrl),
                radius: 15,
              ),
              SizedBox(width: 10,),
              Text('Boy123',
              style: TextStyle(color: Colors.white,)),
              Spacer(),
              IconButton(
                icon: Icon(Icons.more_vert,color: Colors.white,),
                onPressed: () {},
              ),
            ],
          ),Image.network(url),
          Row(
            children: [
               IconButton(
                icon: Icon(Icons.favorite_outline,color: Colors.white,),
                onPressed: () {},
              ),
               IconButton(
                icon: Icon(Icons.chat_bubble_outline ,color: Colors.white,),
                onPressed: () {},
              ),
               IconButton(
                icon: Icon(Icons.send_outlined,color: Colors.white,),
                onPressed: () {},
              ),
               Spacer(),
               IconButton(
                icon: Icon(Icons.bookmark_outline,color: Colors.white,),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
