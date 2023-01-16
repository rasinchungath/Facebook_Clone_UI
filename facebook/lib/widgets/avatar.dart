import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  final String displayImage;
  final bool displayOnlineStatus;
  final bool borderCircle;
  final double width;
  final double height;
  Avatar(
      {required this.displayImage,
      this.displayOnlineStatus = true,
      this.borderCircle = false,
      this.height=40,
      this.width=40,
      });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 5, right: 5),
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              border: borderCircle
                  ? Border.all(
                      color: Colors.blueAccent,
                      width: 2,
                    )
                  : Border(),
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(displayImage),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // child: ClipRRect(
          //   borderRadius: BorderRadius.circular(200),
          //   child: Image.asset(
          //     displayImage,
          //     width: 50,
          //     height: 50,
          //   ),
          // ),
        ),
        displayOnlineStatus == true
            ? Positioned(
                bottom: 0,
                right: 4,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.greenAccent,
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
