import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rto_mcq_test/00%20Home%20Page/01_main_home_page.dart';

class Variable extends StatefulWidget {

  Color headercolor = Color(0xD510446d);
  Color fontcolor = Color(0xffffffff);
  List< Map<String,dynamic> > question = [
    {"_id":1,
      "question":"Near a pedestrian crossing,when the pedestrians are waiting to cross the road, you should",
      "answer":"Stop the vehicle and wait till the pedestrians cross the road and then proceed",
      "a":"gesagaf",
      "b":"Stop the vehicle and wait till the pedestrians cross the road and then proceed",
      "c":"gesagaf",
      "sign":false},
    {"_id":2,
      "question":"You are approaching an arrow bridge, another vehicle is about to enter the bridge from opposite side you should",
      "answer":"Wait till the other vehicle crosses the bridge and then proceed",
      "a":"fgfg",
      "b":"gesagaf",
      "c":"Wait till the other vehicle crosses the bridge and then proceed",
      "sign":false},
    {"_id":3,
      "question":"You can overtake a vehicle in front",
      "answer":"Through the left side, if the road is wide",
      "a":"Through the left side, if the road is wide",
      "b":"gesagaf",
      "c":"gesagaf",
      "sign":false},
    {"_id":4,
      "question":"Free passage should be given to the following types of vehicles ",
      "answer":"Express, Super Express buses",
      "a":"Express, Super Express buses",
      "b":"gesagaf",
      "c":"gesagaf",
      "sign":false},
    {"_id":5,
      "question":"Vehicles proceeding from opposite direction should be allowed to pass through ….",
      "answer":"The convenient side",
      "a":"gesagaf",
      "b":"gesagaf",
      "c":"The convenient side",
      "sign":false},
    {"_id":6,
      "question":"Driver of a vehicle may overtake … ",
      "answer":"When the driver of the vehicle in front shows the signal to overtake",
      "a":"gesagaf",
      "b":"When the driver of the vehicle in front shows the signal to overtake",
      "c":"gesagaf",
      "sign":false},
    {"_id":7,
      "question":"When a Vehicle is parked on the road side during night ",
      "answer":"The park light shall remain lit",
      "a":"The park light shall remain lit",
      "b":"gesagaf",
      "c":"gesagaf",
      "sign":false},
    {"_id":8,
      "question":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3u8wCTCC7Ws_R6JMytGzAkN2ZIQw4tw82fg&usqp=CAU",
      "answer":"Stop",
      "a":"gesagaf",
      "b":"gesagaf",
      "c":"Stop",
      "sign":true},
    {"_id":9,
      "question":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCZh_R6qdaEhCy5C0cUC2uPW3adFr05v37FA&usqp=CAU",
      "answer":"don`t turn right",
      "a":"don`t turn right",
      "b":"gesagaf",
      "c":"gesagaf",
      "sign":true},
    {"_id":10,
      "question":"https://5.imimg.com/data5/SH/WT/MY-152348/u-turn-prohibited-mandatory-retro-reflective-road-signage-500x500.jpg",
      "answer":"U turn",
      "a":"gesagaf",
      "b":"U turn",
      "c":"gesagaf",
      "sign":true},
    {"_id":11,
      "question":"https://d2m3nfprmhqjvd.cloudfront.net/blog/20220228141513/s24-1160x653.jpg",
      "answer":"One Side",
      "a":"One Side",
      "b":"gesagaf",
      "c":"gesagaf",
      "sign":true},
    {"_id":12,
      "question":"Stop Sign",
      "answer":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3u8wCTCC7Ws_R6JMytGzAkN2ZIQw4tw82fg&usqp=CAU",
      "a":"https://5.imimg.com/data5/SH/WT/MY-152348/u-turn-prohibited-mandatory-retro-reflective-road-signage-500x500.jpg",
      "b":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3u8wCTCC7Ws_R6JMytGzAkN2ZIQw4tw82fg&usqp=CAU",
      "c":"https://d2m3nfprmhqjvd.cloudfront.net/blog/20220228141513/s24-1160x653.jpg",
      "sign":true},
  ];

  void setQuestion(List< Map<String,dynamic> > question){
    this.question=question;
  }
  @override
  State<Variable> createState() => _VariableState();
}

class _VariableState extends State<Variable> {
  Variable ProjectVariable = Variable();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 15),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => MainHomePage()
            )
        )
    );
    // API calling for question
    print("10");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  ProjectVariable.headercolor,
                  Colors.white,
                ],
              )
          ),
          child: Center(child: Text("RTO Driving Test",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w800),))
      ),
    );
  }
}
