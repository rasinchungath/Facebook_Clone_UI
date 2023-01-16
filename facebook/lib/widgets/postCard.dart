import 'package:facebook/assets.dart';
import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String postTime;
  final bool createBlueTick;
  final String postTitle;
  final String postPic;
  final String likes;
  final String comments;
  final String shares;

  PostCard(
      {required this.avatar,
      required this.name,
      required this.postTime,
      this.createBlueTick = false,
      required this.postTitle,
      required this.postPic,
      required this.comments,
      required this.likes,
      required this.shares});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PostCardHeader(),
          PostTitle(),
          PostImage(),
          PostCardFooter(),
          
        ],
      ),
    );
  }

  Widget PostCardFooter() {
    Widget smallbox = SizedBox(
      width: 2,
    );

    return Container(
      margin: EdgeInsets.only(right: 5, left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blueAccent,
                  ),
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                SizedBox(width: 3,),
                Textlabel(label: likes),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Textlabel(label: comments),
                smallbox,
                Textlabel(label: "comments"),
                SizedBox(
                  width: 8,
                ),
                Textlabel(label: shares),
                smallbox,
                Textlabel(label: "share"),
                SizedBox(
                  width: 8,
                ),
                Avatar(
                  displayImage: avatar,
                  width: 20,
                  height: 20,
                  displayOnlineStatus: false,
                ),
                IconButton(
                  onPressed: () {
                    print("drop down button pressed");
                  },
                  icon: Icon(Icons.arrow_drop_down),
                ),
              ],
            ),
          ),
         
        ],
      ),
      
    );
  }

  Widget Textlabel({required String label}) {
    return Text(
      label == null ? "" : label,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }

  Widget PostImage() {
    return Container(
      padding: EdgeInsets.only(top: 4, bottom: 4),
      child: Image.asset(postPic),
    );
  }

  Widget PostTitle() {
    return postTitle != null && postTitle != "" ?
    Container(
      padding: EdgeInsets.only(right: 5,left: 5,),
      child: Text(
        postTitle == null ? "" : postTitle,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    ) : SizedBox();
  }

  Widget BlueTick() {
    return Container(
      width: 15,
      height: 15,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blueAccent,
      ),
      child: Icon(
        Icons.check,
        color: Colors.white,
        size: 12,
      ),
    );
  }

  Widget PostCardHeader() {
    return ListTile(
      leading: Avatar(
        displayImage: avatar,
        displayOnlineStatus: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: 8,
          ),
          createBlueTick ? BlueTick() : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            postTime,
            style: TextStyle(
              color: Colors.grey[700],
            ),
          ),
          SizedBox(
            width: 8,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          ),
        ],
      ),
      trailing: IconButton(
        onPressed: () {
          print("more about post");
        },
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
      ),
    );
  }
}
