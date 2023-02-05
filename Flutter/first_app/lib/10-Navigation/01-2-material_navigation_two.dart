import 'package:first_app/10-Navigation/01-1-material_navigation_one.dart';
import 'package:flutter/material.dart';

class MaterialNavigationTwo extends StatefulWidget {
  const MaterialNavigationTwo({Key? key}) : super(key: key);

  @override
  State<MaterialNavigationTwo> createState() => _MaterialNavigationTwoState();
}

class _MaterialNavigationTwoState extends State<MaterialNavigationTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Card(elevation:20,child: Container(margin:EdgeInsets.all(25),child: Text("This is 2nd page click to button and Navigate 1st page using MaterialPageRoute"))),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.green,
            child: TextButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){return MaterialNavigationOne();}));
                },
                child: Text("click here",style: TextStyle(color:Colors.white),)),
          )
        ],
      ),
    ));
  }
}
