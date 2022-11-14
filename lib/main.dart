import 'package:flutter/material.dart';
import 'package:instagram/pages/ChatPage.dart';
import 'package:instagram/pages/chatlist.dart';
import 'package:instagram/pages/homepage.dart';
import 'package:instagram/widgets/buttons/search_text_field.dart';
import 'package:instagram/widgets/profileWidget.dart';

void main() {
  runApp(Insta());
}

class Insta extends StatelessWidget {
  const Insta({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home:HomePage(),
    );
  }
}
