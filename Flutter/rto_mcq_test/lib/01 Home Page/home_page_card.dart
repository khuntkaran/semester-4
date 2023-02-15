import 'package:flutter/material.dart';

class HomePageCard{
  Widget CardMaker(Color linecolor,String heading,String information){
    return Container(
      child: Card(
        color: Color(linecolor.value),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        elevation: 20,
        child: Container(
          child: Row(
            children: [
              // Container(child: CircleAvatar(radius: 23,backgroundColor: Color(0xD510446d),child: CircleAvatar(backgroundImage: NetworkImage(users[index]["image"]), radius: 20,)),margin: EdgeInsets.fromLTRB(0, 0, 5, 0)),
              Container(child: CircleAvatar(radius: 33,backgroundColor: Color(0xD510446d),child: CircleAvatar(backgroundColor: Colors.yellow, radius: 20,)),margin: EdgeInsets.fromLTRB(0, 0, 5, 0)),
              Column(
                children: [Text("|",style: TextStyle(fontSize: 33,color: linecolor),)],
              ),
              Expanded(
                child: Container(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(heading,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w500,)),
                    Text(information,style: TextStyle(color: Colors.white70)),
                  ],
                ),
                  margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                ),
              ),
              Container(child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(Icons.keyboard_arrow_right,size: 35,color: Colors.grey,)
                ],
              ),
              ),
            ],
          ),
          margin: EdgeInsets.fromLTRB(10,15,0,15),),
      ),
      margin: EdgeInsets.fromLTRB(10,15,10,0),
    );
  }
}