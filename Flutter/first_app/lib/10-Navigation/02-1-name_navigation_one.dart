import 'package:first_app/10-Navigation/02-2-name_navigation_two.dart';
import 'package:flutter/material.dart';

class NameRouteNavigationOne extends StatefulWidget {

@override
State<NameRouteNavigationOne> createState() => _NameRouteNavigationOneState();
}

class _NameRouteNavigationOneState extends State<NameRouteNavigationOne> {

  // This is a main file MaterialApp

  // MaterialApp(
  // initialRoute: '/',
  // routes: {
  // // When navigating to the "/" route, build the FirstScreen widget.
  // '/': (context) =>  NameRouteNavigationOne(),
  // // When navigating to the "/second" route, build the SecondScreen widget.
  // '/second': (context) => const NameRouteNavigationTwo(),
  // },
  // );


@override
Widget build(BuildContext context) {
return SafeArea(child: Scaffold(
  body: Column(
    children: [
      Card(elevation:20,child: Container(margin:EdgeInsets.all(25),child: Text("This is 1st page click to button and Navigate 2nd page using Name Route"))),
      Container(
        margin: EdgeInsets.all(10),
        color: Colors.blue,
        child: TextButton(
            onPressed: (){
              Navigator.pushReplacementNamed(context, '/second');
            },
            child: Text("click here",style: TextStyle(color:Colors.white),)),
      )
    ],
  ),
));
}
}
