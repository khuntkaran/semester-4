import 'package:flutter/material.dart';

class Extra_05 extends StatefulWidget{
  @override
  State<Extra_05> createState() => _Extra_05State();
}

class _Extra_05State extends State<Extra_05> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Row(
        children: [
          Expanded(child: Column(
            children: [
              Expanded(child: Container(child: Image.asset('assets/images/thar.jpg',fit: BoxFit.fill,),margin: EdgeInsets.all(4),),flex: 4,),
              Expanded(child: Container(child: Image.asset('assets/images/thar.jpg',fit: BoxFit.fill,),margin: EdgeInsets.all(4),),flex: 2,),
              Expanded(child: Container(child: Image.asset('assets/images/thar.jpg',fit: BoxFit.fill,),margin: EdgeInsets.all(4),))
            ],
          )),
          Expanded(flex: 2,child:  Column(
            children: [
              Expanded(child: Row(
                children: [
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Container(child: Image.asset('assets/images/thar.jpg',fit: BoxFit.fill,),margin: EdgeInsets.all(4),)),
                      Expanded(child: Container(child: Image.asset('assets/images/thar.jpg',fit: BoxFit.fill,),margin: EdgeInsets.all(4),),flex: 2,),
                    ],
                  )),
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Container(child: Image.asset('assets/images/thar.jpg',fit: BoxFit.fill,),margin: EdgeInsets.all(4),),flex: 2,),
                      Expanded(child: Container(child: Image.asset('assets/images/thar.jpg',fit: BoxFit.fill,),margin: EdgeInsets.all(4),)),
                    ],
                  )),
                ],
              ),flex: 5,),
              Expanded(child: Container(child: Image.asset('assets/images/thar.jpg',fit: BoxFit.fill,),margin: EdgeInsets.all(4),)),
              Expanded(child: Container(child: Image.asset('assets/images/thar.jpg',fit: BoxFit.fill,),margin: EdgeInsets.all(4),))
            ],
          ),)
        ],
      ),
    ));
  }
}