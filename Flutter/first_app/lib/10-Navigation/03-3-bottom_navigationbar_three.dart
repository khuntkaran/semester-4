import 'package:flutter/material.dart';

class BottomNavigationbarThree extends StatefulWidget {
  const BottomNavigationbarThree({Key? key}) : super(key: key);

  @override
  State<BottomNavigationbarThree> createState() => _BottomNavigationbarThreeState();
}

class _BottomNavigationbarThreeState extends State<BottomNavigationbarThree> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Container(child:Text("School")));
  }
}
