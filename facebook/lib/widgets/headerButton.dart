import 'package:flutter/material.dart';

Widget headerbutton({
    required String buttonText,
    required IconData buttonIcon,
    required Color buttonColor,
    required void Function() buttonAction,
  }){
    return ElevatedButton.icon(onPressed: buttonAction, icon: Icon(buttonIcon,), label: Text(buttonText,),
    style: ButtonStyle(
      backgroundColor:  MaterialStateProperty.all(buttonColor),
      
    ),
    );
  
  }