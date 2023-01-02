import 'package:flutter/material.dart';

class SimpleInterestCalculator extends StatefulWidget{
  @override
  State<SimpleInterestCalculator> createState() => _SimpleInterestCalculatorState();
}

class _SimpleInterestCalculatorState extends State<SimpleInterestCalculator> {

  Widget textPrint(text){
    return Container(child: Text(text,style: TextStyle(fontSize: 20),),margin: EdgeInsets.fromLTRB(5, 20, 20, 2),);
  }

  Widget dataGet(key,control){
    return Container(child: Row(
      children: [
        Expanded(child: textPrint(key)),
        Expanded(child: TextField(controller: control,keyboardType: TextInputType.number,)),
      ],
    ),);
  }

  Widget dataPrint(key, value){
    return Container(child: Row(
      children: [
        Expanded(child: textPrint(key)),
        Expanded(child: textPrint(value,)),
      ],
    ),);
  }

  late TextEditingController _amount,_percentage,_time ;
  double interest=0.0;
  @override
  void initState() {
    super.initState();
    _amount= TextEditingController();
    _percentage= TextEditingController();
    _time= TextEditingController();
    interest=100.0;
  }

  @override
  Widget build(BuildContext context) {

   return SafeArea(child: Scaffold(
     appBar: AppBar(title: Text("Simple Interest Calculator"),backgroundColor: Colors.pink,),
     body:  SingleChildScrollView(
       child: Column(
         children: [
           Container(
               child: Column(
                  children: [
                    dataGet("Enter Amount :", _amount),
                    dataGet("Enter Percentage :", _percentage),
                    dataGet("Enter Time :", _time),
                 ],
               ),
             margin: EdgeInsets.fromLTRB(5, 20, 5, 20),
             ),
           Container(
             child: Column(
               children: [
                 dataPrint("Your Amount :", _amount.text),
                 dataPrint("Your Percentage :", _percentage.text),
                 dataPrint("Your Time :", _time.text)
               ],
             ),
             margin: EdgeInsets.fromLTRB(5, 20, 5, 20),
           ),
           Container(
             child: TextButton(
               onPressed: (){setState((){});},
               child: Text('Calculate',style: TextStyle(color: Colors.white),),
             ),
             color: Colors.pink,
             margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
           ),
           Container(
             child: Column(
               children: [
                 dataPrint("Your Interest :", interest.toString()),
               ],
             ),
             margin: EdgeInsets.fromLTRB(5, 20, 5, 20),
           ),
         ],
       ),
     )));
  }
}