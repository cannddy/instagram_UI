import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:instagram/pages/activity_page.dart';
import 'package:instagram/pages/chatlist.dart';
import 'package:instagram/pages/chatpage.dart';
import 'package:instagram/pages/explore_page.dart';
import 'package:instagram/pages/feed_page.dart';
import 'package:instagram/pages/profile_page.dart';
import 'package:instagram/pages/reels_page.dart';
//import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  static const TextStyle candyStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);
  static const List _screens = [
    
    feedPage(),
    ExplorePage(),
    ReelsPage(),
    ActivityPage(),
    ProfilePage(),
  ];

  void _operation(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
     
      body:_screens[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.search),
              label: ''),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.video_library_outlined),
              label: ''),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.favorite_outline),
              label: ''),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(Icons.circle_rounded),
              label: ''),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Colors.white,
        onTap: (index){
          setState(() {
            selectedIndex=index;
          });
        },
      ),
    );
  }
}
