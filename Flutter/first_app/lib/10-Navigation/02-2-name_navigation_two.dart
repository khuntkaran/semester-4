import 'package:flutter/material.dart';

class NameRouteNavigationTwo extends StatefulWidget {
  const NameRouteNavigationTwo({Key? key}) : super(key: key);

  @override
  State<NameRouteNavigationTwo> createState() => _NameRouteNavigationTwoState();
}

class _NameRouteNavigationTwoState extends State<NameRouteNavigationTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Card(elevation:20,child: Container(margin:EdgeInsets.all(25),child: Text("This is 2nd page click to button and Navigate 1st page using Name Route"))),
          Container(
            margin: EdgeInsets.all(10),
            color: Colors.green,
            child: TextButton(
                onPressed: (){
                  Navigator.pushReplacementNamed(context, '/first');
                },
                child: Text("click here",style: TextStyle(color:Colors.white),)),
          )
        ],
      ),
    ));
  }
}
