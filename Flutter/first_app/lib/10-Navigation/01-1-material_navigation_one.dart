import 'package:first_app/10-Navigation/01-2-material_navigation_two.dart';
import 'package:flutter/material.dart';

class MaterialNavigationOne extends StatefulWidget {
  @override
  State<MaterialNavigationOne> createState() => _MaterialNavigationOneState();
}

class _MaterialNavigationOneState extends State<MaterialNavigationOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Card(elevation:20,child: Container(margin:EdgeInsets.all(25),child: Text("This is 1st page click to button and Navigate 2nd page using MaterialPageRoute"))),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.blue,
            child: TextButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){return MaterialNavigationTwo();}));
                },
                child: Text("click here",style: TextStyle(color:Colors.white),)),
          )
        ],
      ),
    ));
  }
}
