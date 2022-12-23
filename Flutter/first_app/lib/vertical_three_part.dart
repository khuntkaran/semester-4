import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class VerticalThreePart extends StatefulWidget{
  @override
  State<VerticalThreePart> createState() => _VerticalThreePartState();
}

class _VerticalThreePartState extends State<VerticalThreePart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(color: Colors.pinkAccent, height: 249,),
              Container(color: Colors.blue, height: 249,),
              Container(color: Colors.cyan, height: 249,)
            ],
          ),
        )
    );
  }
}