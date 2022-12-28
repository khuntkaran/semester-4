import 'package:flutter/material.dart';

class HorizontalThreePart extends StatefulWidget{
  @override
  State<HorizontalThreePart> createState() => _HorizontalThreePartState();
}

class _HorizontalThreePartState extends State<HorizontalThreePart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Row(
            children: [
              Container(color: Colors.pinkAccent,width:120,),
              Container(color: Colors.blue,width: 120,),
              Container(color: Colors.cyan,width: 120,)
            ],
          ),
        )
    );
  }
}