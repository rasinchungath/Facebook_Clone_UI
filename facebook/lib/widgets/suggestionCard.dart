import 'dart:ui';
import 'package:facebook/assets.dart';
import 'package:facebook/widgets/bluetick.dart';
import 'package:flutter/material.dart';

class SuggestionCard extends StatelessWidget {
  final String profPic;
  final String SuggName;
  final String mutualFriends;
  final bool bluetick;
  SuggestionCard({required this.SuggName, required this.profPic, required this.mutualFriends, this.bluetick=false});

  

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(left: 10,),
      child: Stack(
        children: [
         suggestionImage(),
         suggestionDetails(),
          
        ],
      ),
    );
  }
  Widget suggestionDetails(){
    return Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border:Border.all(
                  color: Colors.grey.shade300,
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
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
                        SizedBox(width: 5,),
                        bluetick?blueTick:SizedBox(),
                      ],
                    ),
                    subtitle: Text(mutualFriends!=null?mutualFriends:""),
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
  Widget removeButton(){
    return FlatButton(
      color: Colors.grey[300],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      onPressed: (){
        print("remove from list");
      },
       child: Text("Remove", style: TextStyle(
        color: Colors.black,
       ),),);
  }
  Widget IconButton(){
    return FlatButton.icon(
      color: Colors.blue[700],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
    onPressed:(){
      print("add as friend");
    } , 
    icon: Icon(Icons.account_box, color: Colors.white,),
     label: Text("Add Friend",
     style: TextStyle(
      color: Colors.white,
     ),
     ),);
  }
  Widget suggestionImage(){
    return  Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              child: profPic!=null? Image.asset(
                profPic,
                height: 270,
                fit: BoxFit.cover,
              ): SizedBox(),
            ),
          );
  }
}
