import 'package:flutter/material.dart';

class Extra_04 extends StatefulWidget{
  @override
  State<Extra_04> createState() => _Extra_04State();
}

class _Extra_04State extends State<Extra_04> {
  @override
  Widget build(BuildContext context) {
   return SafeArea(
       child: Scaffold(
         body: Row(
           children: [
             Expanded(
                 child: Column(
                   children: [
                     Expanded(
                         child: Container(
                             color: Colors.lightBlueAccent,
                             child: Center(child: Text("C1",style: TextStyle(color: Colors.amber,fontSize: 25,),),),
                             margin: EdgeInsets.all(5),
                         )),
                     Expanded(child: Container()),
                     Expanded(
                         child: Container(
                             color: Colors.cyan,
                             child: Center(child: Text("C4",style: TextStyle(color: Colors.amber,fontSize: 25,),),),
                             margin: EdgeInsets.all(5),
                         )),
                   ],
                 )),
             Expanded(child: Column()),
             Expanded(
                 child: Column(
                   children: [
                     Expanded(
                         child: Container(
                             color: Colors.lightGreen,
                             child: Center(child: Text("C2",style: TextStyle(color: Colors.amber,fontSize: 25,),),),
                             margin: EdgeInsets.all(5),
                         )),
                     Expanded(
                         child: Container(
                             color: Colors.pinkAccent,
                             child: Center(child: Text("C3",style: TextStyle(color: Colors.amber,fontSize: 25,),),),
                             margin: EdgeInsets.all(5),
                         )),
                     Expanded(
                         child: Container(
                             color: Colors.purple,
                             child: Center(child: Text("C5",style: TextStyle(color: Colors.amber,fontSize: 25,),),),
                             margin: EdgeInsets.all(5),
                         )),
                   ],
                 )),
           ],
         ),
       ));
  }
}