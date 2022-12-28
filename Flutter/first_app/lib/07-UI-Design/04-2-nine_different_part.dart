import 'package:flutter/material.dart';

class NineDifferentPart extends StatefulWidget{
  @override
  State<NineDifferentPart> createState() => _NineDifferentPartState();
}

class _NineDifferentPartState extends State<NineDifferentPart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                child: Row(
                    children:[
                      Column(
                        children: [
                          Container(color:Colors.pinkAccent,width: 120,height: 299,),
                          Container(color:Colors.blue,width: 120,height: 199,),
                          Container(color:Colors.amber,width: 120,height: 249,),
                        ],
                      ),
                      Column(
                        children: [
                          Container(color:Colors.black,width: 120,height: 199,),
                          Container(color:Colors.red,width: 120,height: 269,),
                          Container(color:Colors.green,width: 120,height: 279,),
                        ],
                      ),
                      Column(
                        children: [
                          Container(color:Colors.cyan,width: 120,height: 60,),
                          Container(color:Colors.yellowAccent,width: 120,height: 379,),
                          Container(color:Colors.redAccent,width: 120,height: 308,),
                        ],
                      ),
                    ]
                )
            )
        )
    );
  }
}