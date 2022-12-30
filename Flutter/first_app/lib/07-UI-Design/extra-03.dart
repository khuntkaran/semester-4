import 'package:flutter/material.dart';

class Extra_03 extends StatefulWidget {
  @override
  State<Extra_03> createState() => _Extra_03State();
}

class _Extra_03State extends State<Extra_03> {
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
                      color: Colors.lime,
                      child: Center(child: Text("X",style: TextStyle(color: Colors.amber,fontSize: 25,),),)
                  )),
              Expanded(
                  child: Container(
                      color: Colors.lightBlueAccent,
                      child: Center(child: Text("O",style: TextStyle(color: Colors.amber,fontSize: 25,),),)
                  )),
              Expanded(
                  child: Container(
                      color: Colors.cyan,
                      child: Center(child: Text("X",style: TextStyle(color: Colors.amber,fontSize: 25,),),)
                  )),
            ],
          )),
          Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                          color: Colors.lightGreen,
                          child: Center(child: Text("X",style: TextStyle(color: Colors.amber,fontSize: 25,),),)
                      )),
                  Expanded(
                      child: Container(
                          color: Colors.blue,
                          child: Center(child: Text("O",style: TextStyle(color: Colors.amber,fontSize: 25,),),)
                      )),
                  Expanded(
                      child: Container(
                          color: Colors.black12,
                          child: Center(child: Text("O",style: TextStyle(color: Colors.amber,fontSize: 25,),),)
                      )),
                ],
              )),
          Expanded(
              child: Column(
                children: [
                  Expanded(
                      child: Container(
                          color: Colors.redAccent,
                          child: Center(child: Text("O",style: TextStyle(color: Colors.amber,fontSize: 25,),),)
                      )),
                  Expanded(
                      child: Container(
                          color: Colors.pinkAccent,
                          child: Center(child: Text("X",style: TextStyle(color: Colors.amber,fontSize: 25,),),)
                      )),
                  Expanded(
                      child: Container(
                          color: Colors.purple,
                          child: Center(child: Text("X",style: TextStyle(color: Colors.amber,fontSize: 25,),),)
                      )),
                ],
              )),
        ],
      ),
    ));
  }
}
