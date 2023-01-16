import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selecteditem=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(color: Colors.red,),
      bottomNavigationBar: Container(
        color: Colors.green,
        margin: EdgeInsets.all(20),
        child: BottomNavigationBar(
          currentIndex: selecteditem,
          backgroundColor: Colors.green,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.cyan,
          items: [
            BottomNavigationBarItem(
              icon:Icon(Icons.home,),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label:  'Camera',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.widgets_outlined),
              label: 'Camera',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.save_outlined),
              label: 'Camera',
            ),
          ],
          onTap: (value){
            setState(() {
              selecteditem=value;
            });
          },
        ),
      ),
    ));
  }
}
