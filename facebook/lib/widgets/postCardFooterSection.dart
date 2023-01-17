import 'package:facebook/sections/headerButtonSection.dart';
import 'package:facebook/widgets/headerButton.dart';
import 'package:flutter/material.dart';


Widget postcardFooterSection= HeaderButtonSection(
            buttonOne: headerbutton(
                buttonText: "Like",
                buttonIcon: Icons.thumb_up_alt_outlined,
                buttonColor: Colors.grey.shade700,
                buttonAction: () {
                  print("like post");
                }),
            buttonTwo: headerbutton(
                buttonText: "coment",
                buttonIcon: Icons.message_outlined,
                buttonColor: Colors.grey.shade700,
                buttonAction: () {
                  print("comment on post");
                }),
            buttonThree: headerbutton(
                buttonText: "Share",
                buttonIcon: Icons.share_outlined,
                buttonColor: Colors.grey.shade700,
                buttonAction: () {
                  print("share post");
                }),
          );