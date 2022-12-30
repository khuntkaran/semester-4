import 'package:flutter/material.dart';

class Extra_02 extends StatefulWidget{
  @override
  State<Extra_02> createState() => _Extra_02State();
}

class _Extra_02State extends State<Extra_02> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Expanded(child: Container(color:Colors.amber)),
              Expanded(child: Row(
                children: [
                  Expanded(child: Container(color: Colors.blue)),
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Container(color: Colors.orange)),
                      Expanded(child: Container(color: Colors.cyanAccent)),
                    ],
                  )),
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Container(color: Colors.blue)),
                      Expanded(child: Container(color: Colors.deepOrange)),
                    ],
                  )),
                  Expanded(child: Container(color:Colors.redAccent)),
                ],
              )),
              Expanded(child: Row(
                children: [
                  Expanded(child: Container(color: Colors.redAccent)),
                  Expanded(child: Container(color:Colors.black12)),
                  Expanded(child: Container(color:Colors.green)),
                  Expanded(child: Container(color:Colors.blue)),
                ],
              )),
              Expanded(child: Row(
                children: [
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Container(color: Colors.blue)),
                      Expanded(child: Container(color: Colors.deepOrange)),
                    ],
                  )),
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Column(
                        children: [
                          Expanded(child: Row(
                            children: [
                              Expanded(child: Container(color: Colors.redAccent)),
                              Expanded(child: Container(color:Colors.blue)),
                            ],
                          )),
                          Expanded(child: Row(
                            children: [
                              Expanded(child: Container(color: Colors.green)),
                              Expanded(child: Container(color:Colors.orangeAccent)),
                            ],
                          )),
                        ],
                      )),
                      Expanded(child: Container(color: Colors.purple)),
                    ],
                  )),
                  Expanded(child: Container(color:Colors.lightGreenAccent)),
                  Expanded(child: Container(color:Colors.black12)),
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Container(color: Colors.green)),
                      Expanded(child: Container(color: Colors.blue)),
                      Expanded(child: Container(color: Colors.deepOrange),flex: 3,),
                    ],
                  )),
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Container(color: Colors.white)),
                      Expanded(child: Container(color: Colors.lightGreenAccent)),
                      Expanded(child: Container(color: Colors.lightBlueAccent),flex: 3,),
                    ],
                  )),
                ],
              )),
            ],
          ),
        )
    );
  }
}