import 'package:flutter/material.dart';
class circularButton extends StatelessWidget {
  
  final  IconData buttonIcon;
  Color iconColor;
  final void Function() buttonAction;

  circularButton({
    required this.buttonAction,
    required this.buttonIcon,
    this.iconColor=Colors.black,

  });


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],

      ),
      margin: EdgeInsets.only(left: 3,top: 1),
      child: IconButton(onPressed: buttonAction,
       icon: Icon(buttonIcon,
       color: iconColor,
       size: 18,
       )),

    );
    
  }
}