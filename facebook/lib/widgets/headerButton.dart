import 'package:flutter/material.dart';

Widget headerbutton({
    required String buttonText,
    required IconData buttonIcon,
    required Color buttonColor,
    required void Function() buttonAction,
  }){
    return FlatButton.icon(onPressed: buttonAction,
    icon: Icon(buttonIcon, color: buttonColor,),
     label:Text(buttonText) );
  }