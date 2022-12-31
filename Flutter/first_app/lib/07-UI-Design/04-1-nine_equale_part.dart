import 'package:flutter/material.dart';

class NineEqualePart extends StatefulWidget{
  @override
  State<NineEqualePart> createState() => _NineEqualePartState();
}

class _NineEqualePartState extends State<NineEqualePart> {
  Widget costmaiseContainer(bgColor){
    return Expanded(child: Container(color:bgColor));
  }
  Widget coustmaiseColumn(color1,color2,color3){
    return Expanded(
      child: Column(
        children: [
          costmaiseContainer(color1),
          costmaiseContainer(color2),
          costmaiseContainer(color3),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
   return SafeArea(
       child: Scaffold(
         body: Container(
           child: Row(
             children:[
               coustmaiseColumn(Colors.pinkAccent,Colors.blue,Colors.amber),
               coustmaiseColumn(Colors.black,Colors.red,Colors.lightGreen),
               coustmaiseColumn(Colors.cyan,Colors.yellowAccent,Colors.redAccent),
             ]
           )
         )
       )
   );
  }
}