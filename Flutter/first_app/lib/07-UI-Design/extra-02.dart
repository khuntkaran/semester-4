import 'package:flutter/material.dart';

class Extra_02 extends StatefulWidget{
  @override
  State<Extra_02> createState() => _Extra_02State();
}

class _Extra_02State extends State<Extra_02> {
  Widget costmaiseContainer(bgColor, int fl){
    return Expanded(child: Container(color:bgColor),flex: fl,);
  }

  Widget coustmaiseColumn( List<Color> a,List<int> fl){
    return Expanded(child:  Column(children: [for(int i = 0; i<a.length;i++)...[costmaiseContainer(a[i],fl[i])],],),);
  }

  Widget coustmaiseRow(List<Color> a,List<int> fl){
    return Expanded(child:  Row(children: [for(int i = 0; i<a.length;i++)...[costmaiseContainer(a[i],fl[i])],],),);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              costmaiseContainer(Colors.amber,1),
              Expanded(child: Row(
                children: [
                  Expanded(child: Container(color: Colors.blue)),
                  coustmaiseColumn(<Color>[Colors.orange,Colors.pinkAccent],<int>[1,1]),
                  coustmaiseColumn(<Color>[Colors.blue,Colors.deepOrange],<int>[1,1]),
                  Expanded(child: Container(color:Colors.redAccent)),
                ],
              )),
              coustmaiseRow(<Color>[Colors.redAccent,Colors.black12,Colors.green,Colors.blueGrey],<int>[1,1,1,1]),
              Expanded(child: Row(
                children: [
                  coustmaiseColumn(<Color>[Colors.blue,Colors.deepOrange],<int>[1,1]),
                  Expanded(child: Column(
                    children: [
                      Expanded(child: Column(
                        children: [
                          coustmaiseRow(<Color>[Colors.redAccent,Colors.blue],<int>[1,1]),
                          coustmaiseRow(<Color>[Colors.green,Colors.amber],<int>[1,1])
                        ],
                      )),
                      costmaiseContainer(Colors.purple,1),
                    ],
                  )),
                  costmaiseContainer(Colors.lightGreenAccent,1),
                  costmaiseContainer(Colors.black12,1),
                  coustmaiseColumn(<Color>[Colors.green,Colors.blue,Colors.red], <int>[1,1,3]),
                  coustmaiseColumn(<Color>[Colors.white,Colors.lightGreenAccent,Colors.lightBlueAccent], <int>[1,1,3])
                ],
              )),
            ],
          ),
        )
    );
  }
}