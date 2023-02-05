import 'package:first_app/10-Navigation/03-2-bottom_navigationbar_two.dart';
import 'package:first_app/10-Navigation/03-3-bottom_navigationbar_three.dart';
import 'package:flutter/material.dart';

class BottomNavigationbarOne extends StatefulWidget {
@override
State<BottomNavigationbarOne> createState() => _BottomNavigationbarOneState();
}

class _BottomNavigationbarOneState extends State<BottomNavigationbarOne> {
  int _selectedIndex=0;
  List<Widget> listPage=[BottomNavigationbarTwo(),BottomNavigationbarThree()];
@override
Widget build(BuildContext context) {
return SafeArea(child: Scaffold(
  body: listPage[_selectedIndex],
  bottomNavigationBar: BottomNavigationBar(
    items: const <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.business),
        label: 'Business',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.school),
        label: 'School',
      ),
    ],
    currentIndex: _selectedIndex,
    selectedItemColor: Colors.amber[800],
    onTap:(index){
      setState(() {
        _selectedIndex=index;
      });
    },
  ),
));
}
}
