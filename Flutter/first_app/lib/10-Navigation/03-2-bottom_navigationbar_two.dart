import 'package:flutter/material.dart';

class BottomNavigationbarTwo extends StatefulWidget {
  const BottomNavigationbarTwo({Key? key}) : super(key: key);

  @override
  State<BottomNavigationbarTwo> createState() => _BottomNavigationbarTwoState();
}

class _BottomNavigationbarTwoState extends State<BottomNavigationbarTwo> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child:Text("Business")));
  }
}
