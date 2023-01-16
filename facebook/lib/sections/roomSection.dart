import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:flutter/material.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          createRoom(),
          Avatar(displayImage: onam,),
          Avatar(displayImage: muthasshi,),
          Avatar(displayImage: vibin,),
          Avatar(displayImage: wedding,),
          Avatar(displayImage: rasin,),
          Avatar(displayImage: onam,),
          Avatar(displayImage: muthasshi,),
          Avatar(displayImage: vibin, ),
          Avatar(displayImage: wedding,),
          Avatar(displayImage: rasin,),
        ],
      ),
    );
  }

  Widget createRoom() {
    return Container(
      padding: EdgeInsets.only(left: 5, right: 5),

      child:  OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        shape: StadiumBorder(),
        padding: EdgeInsets.all(10),
        side: BorderSide(
          width: 2,
          color: Colors.blue.shade100,
        ),
      ),
      onPressed: () {
        print("create room");
      },
      icon: Icon(
        Icons.video_call,
        color: Colors.purple,
      ),
      label: Text(
        "create\nroom",
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
    ),
    );
  }
}
