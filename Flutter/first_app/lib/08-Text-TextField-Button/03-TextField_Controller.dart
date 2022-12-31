import 'package:flutter/material.dart';

class TextFieldController extends StatefulWidget{
  @override
  State<TextFieldController> createState() => _TextFieldControllerState();
}

class _TextFieldControllerState extends State<TextFieldController> {

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
                onPressed: (){print(_inputControl.text);},
                child: Text('Enter',style: TextStyle(color: Colors.white),),
              ),
              color: Colors.green,
            )
          ],
        ),
      )
    ));
  }
}