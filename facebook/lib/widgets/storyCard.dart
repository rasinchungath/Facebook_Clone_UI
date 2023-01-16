import 'package:facebook/assets.dart';
import 'package:facebook/widgets/avatar.dart';
import 'package:facebook/widgets/circularButton.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  late final String labelText;
  late final String story;
  final String avatar;
  final bool createStoryButton;

  StoryCard({
    required this.story,
    required this.labelText,
    required this.avatar,
    this.createStoryButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 8,
        bottom: 8,
        left: 5,
        right: 5,
      ),
      width: 125,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image: DecorationImage(
          image: AssetImage(story),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
              top: 5,
              left: 5,
              child: createStoryButton
                  ? circularButton(
                      buttonAction: () {
                        print("add story ");
                      },
                      buttonIcon: Icons.add,
                      iconColor: Colors.blue,
                    
                    )
                  : Avatar(
                      displayImage: avatar,
                      displayOnlineStatus: false,
                      borderCircle: true,
                      height: 35,
                      width: 35,
                    )),
          Positioned(
            bottom: 8,
            left: 8,
            child: Text(
              labelText,
              style: TextStyle(
                color: Colors.white,
                //fontWeight: FontWeight.bold,
                //fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
