import 'package:flutter/material.dart';

class TextFieldDesign extends StatefulWidget {
  @override
  State<TextFieldDesign> createState() => _TextFieldDesignState();
}

class _TextFieldDesignState extends State<TextFieldDesign> {
  late TextEditingController _inputControl;

  @override
  void initState() {
    super.initState();
    _inputControl=TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
              child: Column(
      children: [
        Container(
          child: TextField(
              controller: _inputControl,
              decoration: InputDecoration(
                labelText: "Apply border",
                labelStyle: TextStyle(color: Colors.grey,),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.greenAccent),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: _inputControl.text.isNotEmpty ? Colors.greenAccent:Colors.red),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                errorBorder:  OutlineInputBorder(
                  borderSide: BorderSide(width: 3, color: Colors.red),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),

          ),
          margin: EdgeInsets.fromLTRB(10, 100, 10, 5),
        ),
        Container(
          child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "label text",
                labelStyle: TextStyle(color: Colors.grey,),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.black,
              ),
              style: new TextStyle(color: Colors.white),
          ),
          margin: EdgeInsets.fromLTRB(10, 100, 10, 5),
        ),
        Container(
          child: TextField(
            maxLength: 5,
              decoration: InputDecoration(
                hintText: "hint text",
                hintStyle: TextStyle(color: Colors.grey,),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
          ),
          margin: EdgeInsets.fromLTRB(10, 100, 10, 5),
        ),
      ],
    ),
            )));
  }
}
