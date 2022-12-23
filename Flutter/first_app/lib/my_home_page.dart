import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
