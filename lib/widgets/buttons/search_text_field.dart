import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchTextField extends StatefulWidget {
  const SearchTextField({super.key});

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return 
      Padding(
        padding: const EdgeInsets.all(11),
        child: CupertinoSearchTextField(
     
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
          ),
          backgroundColor: Color.fromARGB(255, 54, 51, 51),
          itemSize: 30.0,
          padding: EdgeInsets.all(9.5),
        ),
      );
    
  }
}
