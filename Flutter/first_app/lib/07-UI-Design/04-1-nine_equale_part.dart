import 'package:flutter/material.dart';

class NineEqualePart extends StatefulWidget{
  @override
  State<NineEqualePart> createState() => _NineEqualePartState();
}

class _NineEqualePartState extends State<NineEqualePart> {
  @override
  Widget build(BuildContext context) {
   return SafeArea(
       child: Scaffold(
         body: Container(
           child: Row(
             children:[
               Column(
                 children: [
                   Container(color:Colors.pinkAccent,width: 120,height: 249,),
                   Container(color:Colors.blue,width: 120,height: 249,),
                   Container(color:Colors.amber,width: 120,height: 249,),
                 ],
               ),
               Column(
                 children: [
                   Container(color:Colors.black,width: 120,height: 249,),
                   Container(color:Colors.red,width: 120,height: 249,),
                   Container(color:Colors.green,width: 120,height: 249,),
                 ],
               ),
               Column(
                 children: [
                   Container(color:Colors.cyan,width: 120,height: 249,),
                   Container(color:Colors.yellowAccent,width: 120,height: 249,),
                   Container(color:Colors.redAccent,width: 120,height: 249,),
                 ],
               ),
             ]
           )
         )
       )
   );
  }
}