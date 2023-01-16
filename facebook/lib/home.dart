import 'package:facebook/assets.dart';
import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/sections/roomSection.dart';
import 'package:facebook/sections/statusSections.dart';
import 'package:facebook/sections/storySection.dart';
import 'package:facebook/sections/suggestionSection.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:facebook/widgets/postCard.dart';
import 'package:facebook/widgets/postCardFooterSection.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget thickDivider = Divider(
      thickness: 10,
      color: Colors.grey[300],
    );
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "clone app",
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "facebook",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            actions: [
              circularButton(
                buttonAction: () {
                  print("search screen appears");
                },
                buttonIcon: Icons.search,
              ),
              circularButton(
                  buttonAction: () {
                    print("chat screen appears");
                  },
                  buttonIcon: Icons.chat)
            ],
          ),
          body: ListView(
            children: [
              statusSection(),
              thinDivider,
              HeaderButtonSection(
                buttonOne: headerbutton(
                    buttonText: "Live",
                    buttonIcon: Icons.video_call,
                    buttonColor: Colors.red,
                    buttonAction: () {
                      print("going live");
                    }),
                buttonTwo: headerbutton(
                    buttonText: "Photos",
                    buttonIcon: Icons.photo_library,
                    buttonColor: Colors.green,
                    buttonAction: () {
                      print("go to photos");
                    }),
                buttonThree: headerbutton(
                    buttonText: "Room",
                    buttonIcon: Icons.video_call,
                    buttonColor: Colors.purple,
                    buttonAction: () {
                      print("go to chatroom");
                    }),
              ),
              thickDivider,
              RoomSection(),
              thickDivider,
              StorySection(),
              thickDivider,
              PostCard(
                avatar: onam,
                name: "Rasin Chungath",
                postTime: "5h",
                createBlueTick: true,
                postTitle: "Happy Onam all",
                postPic: onam,
                comments: "2K",
                likes: "20K",
                shares: "1K",
              ),
              thinDivider,
              postcardFooterSection,
              thickDivider,
              PostCard(
                avatar: akhi,
                name: "Rajan Chungath",
                postTime: "1 day ago",
                postTitle: "Good Morning",
                postPic: muthasshi,
                comments: "100",
                likes: "10K",
                shares: "5",
              ),
              thinDivider,
              postcardFooterSection,
              thickDivider,
              SuggestionSection(),
              thickDivider,
              PostCard(
                avatar: mangloor,
                name: "Rancy Chungath",
                createBlueTick: true,
                postTime: "1h",
                postTitle: postchild,
                postPic: childhood,
                comments: "6K",
                likes: "10.5K",
                shares: "1.1K",
                
              ),
              thinDivider,
              postcardFooterSection,
              
            ],
          )),
    );
  }
}
