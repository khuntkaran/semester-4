import 'package:flutter/material.dart';

class TextDisplay extends StatefulWidget{
  @override
  State<TextDisplay> createState() => _TextDisplayState();
}

class _TextDisplayState extends State<TextDisplay> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                color: Colors.cyan,
                child: Center(
                  child: Text(
                    "Hello World",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 25,
                    ),
                  ),
                )
            )
        )
    );
  }
}