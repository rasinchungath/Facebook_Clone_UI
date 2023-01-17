import 'package:facebook/widgets/bluetick.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String profPic;
  final String SuggName;
  final String mutualFriends;
  final bool bluetick;
  SuggestionCard(
      {required this.SuggName,
      required this.profPic,
      required this.mutualFriends,
      this.bluetick = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(
        left: 10,
      ),
      child: Stack(
        children: [
          suggestionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }

  Widget suggestionDetails() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 125,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          border: Border.all(
            color: Colors.grey.shade300,
            width: 1,
          ),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            ListTile(
              title: Row(
                children: [
                  Text(SuggName),
                  const SizedBox(
                    width: 5,
                  ),
                  bluetick ? blueTick : SizedBox(),
                ],
              ),
              subtitle: Text(mutualFriends != null ? mutualFriends : ""),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(),
                  removeButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget removeButton() {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.grey[300]),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ))),
        child: const Text(
          'Remove',
          style: TextStyle(
            color: Colors.black,
          ),
        ));
  }

  

  Widget IconButton() {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: const Icon(
        Icons.account_box,
        color: Colors.white,
      ),
      label: const Text(
        'Add Friend',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor:  Colors.blue[700],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }

  Widget suggestionImage() {
    return Positioned(
      top: 0,
      right: 0,
      left: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(10),
          topLeft: Radius.circular(10),
        ),
        child: profPic != null
            ? Image.asset(
                profPic,
                height: 270,
                fit: BoxFit.cover,
              )
            : SizedBox(),
      ),
    );
  }
}
