import 'dart:async';

import 'package:facebook/widgets/headerButton.dart';
import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;

  HeaderButtonSection(
      {required this.buttonOne,
      required this.buttonTwo,
      required this.buttonThree});

  @override
  Widget build(BuildContext context) {
    Widget verticalDivider = VerticalDivider(
      thickness: 1,
      color: Colors.grey[300],
    );
    return Container(
      height: 40,
      width: 40,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonOne,
            verticalDivider,
            Expanded(child: buttonTwo),
            verticalDivider,
            buttonThree,
          ],
        ),
      ),
    );
  }
}
