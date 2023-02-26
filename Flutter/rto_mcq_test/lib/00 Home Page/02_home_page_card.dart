import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageCard{
  Widget CardMaker(Color linecolor, logoicon,String heading,String information,BuildContext context,dynamic routeName){
    return Container(
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){return routeName;}));
        },
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topRight: Radius.circular(25),bottomLeft: Radius.circular(25))),
          elevation: 12,
          child: Container(
            child: Row(
              children: [
                // Container(child: CircleAvatar(radius: 23,backgroundColor: Color(0xD510446d),child: CircleAvatar(backgroundImage: NetworkImage(users[index]["image"]), radius: 20,)),margin: EdgeInsets.fromLTRB(0, 0, 5, 0)),
                Container(child: CircleAvatar(radius: 33,backgroundColor: linecolor,child: Icon(logoicon,color: Colors.white,shadows: [Shadow(color: Colors.black,blurRadius: 30,)],size: 30,)),margin: EdgeInsets.fromLTRB(0, 0, 5, 0)),
                Column(
                  children: [Text("|",style: TextStyle(fontSize: 33,color: linecolor),)],
                ),
                Expanded(
                  child: Container(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(heading.tr,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,)),
                      Text(information,style: TextStyle(color:Colors.grey),),
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
                ),),
              ],
            ),
            margin: EdgeInsets.fromLTRB(10,10,0,10),
          ),
        ),
      ),
      margin: EdgeInsets.fromLTRB(10,15,10,0),
    );
  }
}