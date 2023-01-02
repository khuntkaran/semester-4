import 'package:flutter/material.dart';

class SimpleInterestCalculator extends StatefulWidget{
  @override
  State<SimpleInterestCalculator> createState() => _SimpleInterestCalculatorState();
}

class _SimpleInterestCalculatorState extends State<SimpleInterestCalculator> {
  Widget textPrint(text){
    return Container(child: Text(text,style: TextStyle(fontSize: 20),),margin: EdgeInsets.fromLTRB(5, 20, 20, 2),);
  }
  late TextEditingController _amount,_percentage,_time ;

@override
  void initState() {
    super.initState();
    _amount=_percentage=_time  = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {

   return SafeArea(child: Scaffold(
     appBar: AppBar(title: Text("Simple Interest Calculator"),backgroundColor: Colors.pink,),
     body:  SingleChildScrollView(
   child:Column(
     children: [
       Expanded(flex:2,child: Row(
         children: [
           Expanded(child: Column(
             children: [
               textPrint('Enter Amount :'),
               textPrint('Enter Amount :'),
               textPrint('Enter Amount :'),
             ],
           )),
           Expanded(child: Column(
             children: [
               TextField(controller: _amount,),
               TextField(controller: _percentage,),
               TextField(controller: _time,),
             ],
           )),
         ],
       )),
       Expanded(flex:2,child: Row(
         children: [
           Expanded(child: Column(
             children: [
               textPrint('Enter Amount :'),
               textPrint('Enter Amount :'),
               textPrint('Enter Amount :'),
             ],
           )),
           Expanded(child: Column(
             children: [
               textPrint(_amount.text),
               textPrint(_percentage.text),
               textPrint(_time.text),
             ],
           )),
         ],
       )),
       Column(
         children: [
           TextButton(onPressed: (){setState(() {});}, child: Text("Calculate"))
         ],
       )
     ],
   ),
    )));
  }
}