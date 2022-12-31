import 'package:flutter/material.dart';

class CustomTextChangeFonts extends StatefulWidget{
  @override
  State<CustomTextChangeFonts> createState() => _CustomTextChangeFontsState();
}

class _CustomTextChangeFontsState extends State<CustomTextChangeFonts> {
  Widget editText(text){
    return Center(child: Text(text,style: TextStyle(color:Colors.green,fontFamily: 'EastSeaDokdo',fontSize: 40),));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: editText("hello !!") ,
    ));
  }
}