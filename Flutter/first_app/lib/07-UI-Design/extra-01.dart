import 'package:flutter/material.dart';

class Extra_01 extends StatefulWidget{
  @override
  State<Extra_01> createState() => _Extra_01State();
}

class _Extra_01State extends State<Extra_01> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(child: Container(color:Colors.amber)),
              Expanded(child: Row(
                children: [
                  Expanded(child: Container(color: Colors.blue,),flex: 2,),
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Container(color:Colors.black)),
                      Expanded(child: Container(color: Colors.cyanAccent,)),
                    ],
                  ))
                ],
              )),
              Expanded(child: Row(
                children: [
                  Expanded(child: Container(color:Colors.brown)),
                  Expanded(child: Container(color:Colors.green)),
                  Expanded(child: Container(color:Colors.pinkAccent)),
                ],
              )),
            ],
          ),
        )
    );
  }
}