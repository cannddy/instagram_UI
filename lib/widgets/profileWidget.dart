import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram/pages/chatlist.dart';
import 'package:instagram/widgets/buttons/edit_profile_button.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 240,
        padding: const EdgeInsets.all(15),
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 42,
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        " 3",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Posts",
                        style: TextStyle(color: Colors.white60, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        " 380",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Followers",
                        style: TextStyle(color: Colors.white60, fontSize: 13),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        " 352",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "Following",
                        style: TextStyle(color: Colors.white60, fontSize: 13),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text('Praveen',
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold)),
           
            Text('Candy',
                style: TextStyle(
                  color: Colors.grey,
                )), SizedBox(
              height:2,
            ),
            Text('Almighty push!',
                style: TextStyle(
                  color: Colors.white,
                )), SizedBox(
              height: 2,
            ),
            Text('TryOuts',
                style: TextStyle(
                  color: Colors.white,
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                EditButton(),
                IconButton(
                    onPressed: (() {}),
                    icon: Icon(
                      Icons.perm_contact_cal_outlined,
                      color: Color.fromARGB(255, 87, 85, 85),
                    )),
              ],
            ),
             
           
          ],
         
          
          
        ),
      );
    
  }
}
