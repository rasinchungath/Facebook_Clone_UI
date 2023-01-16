import 'package:facebook/assets.dart';
import 'package:facebook/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';



class SuggestionSection extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            leading: Text("People you may know",),
            trailing: IconButton(
              onPressed: (){
                print("more suggestion");
              },
             icon: Icon(Icons.more_horiz,
             color: Colors.grey[700],),),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SuggestionCard(profPic: praveen, SuggName: "Virat Kohli", mutualFriends: "5 mutual friends",bluetick: true,),
                SuggestionCard(profPic: itlab, SuggName: "Rohit Sharma",mutualFriends: "1 mutual friends",),
                SuggestionCard(profPic: akhi, SuggName: "Bumrah",mutualFriends: "3 mutual friends"),
               
                
                
              ],
            ),
          ),
          
        ],
      ),
    );
    
  }
}