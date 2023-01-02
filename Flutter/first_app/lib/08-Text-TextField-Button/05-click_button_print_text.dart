import 'package:flutter/material.dart';

class ClickButtonPrintText extends StatefulWidget{
  @override
  State<ClickButtonPrintText> createState() => _ClickButtonPrintTextState();
}

class _ClickButtonPrintTextState extends State<ClickButtonPrintText> {

  String printtext='';
  late TextEditingController _inputControl;

  @override
  void initState() {
    super.initState();
    _inputControl=TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        body: Center(
          child: Column(
            children: [
              Container(child: TextField(controller: _inputControl,),margin: EdgeInsets.fromLTRB(10, 100, 10, 5),),
              Container(
                child: TextButton(
                  onPressed: (){setState((){});},
                  child: Text('Enter',style: TextStyle(color: Colors.white),),
                ),
                color: Colors.green,
              ),
              Container(child: Text(_inputControl.text),margin: EdgeInsets.fromLTRB(10, 100, 10, 5),)
            ],
          ),
        )
    ));
  }
}