import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram/widgets/profileWidget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("praveen_sparkzzz"),
        actions: [
          IconButton(
            icon: Icon(Icons.add_box_outlined),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.menu_outlined),
            onPressed: () {
              showModalBottomSheet(
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 83, 82, 80),
        context: context,
        builder: (context) => Container(
              width: 300,
              height: 450,
              color: Colors.white54,
              alignment: Alignment.center,
              child:Column(
                children: [ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings),
                )],
              )
            
            ));

            },
          )
        ],
      ),
     body: ListView(children: [
        ProfileWidget()
      ],),
    );
    
  }
}