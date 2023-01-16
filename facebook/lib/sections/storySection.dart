import 'package:facebook/assets.dart';
import 'package:facebook/widgets/storyCard.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            story: palakkad,
            labelText: "Add Story",
            avatar: onam,
            createStoryButton: true,
          ),
          StoryCard(story: vibin,
           labelText: "Vibin V B", 
           avatar: mangloor),
          StoryCard(
            story: muthasshi,
            labelText: "Rajan Chungath",
            avatar: childhood,
          ),
          StoryCard(
            story: akhi,
            labelText: "Praveen Nerthethil",
            avatar: praveen,
          ),
        ],
      ),
    );
  }
}
