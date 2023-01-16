import 'package:first_app/Navigate/07-navigate.dart';
import 'package:first_app/Navigate/08-navigate.dart';
import 'package:first_app/Navigate/09-navigate.dart';
import 'package:first_app/Navigate/project-navigate.dart';
import 'package:flutter/material.dart';

class NavigateMain extends StatefulWidget {
  @override
  State<NavigateMain> createState() => _NavigateMainState();
}

class _NavigateMainState extends State<NavigateMain> {

  @override
  Widget build(BuildContext context) {
    myCard card=myCard(context);
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("My App"),backgroundColor: Colors.greenAccent,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            card.makeCard(SevenNavigate(), "07-UI-Design"),
            card.makeCard(EightNavigate(), "08-Text-TextField-Button"),
            card.makeCard(NineNavigate(), "09-Images"),
            card.makeCard(ProjectNavigate(), "Project"),
          ],
        ),
      ),
    ));
  }
}

class myCard{
  dynamic context;
  myCard(context){
    this.context=context;
  }
  Widget makeCard(dynamic routeName, String displayName) {
    return Container(
        child: InkWell(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(elevation: 20,child: Container(child: Text(displayName,),margin: EdgeInsets.all(20),),                ),
              ],
            ),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {return routeName;}),);
            }),
      margin: EdgeInsets.all(10),
    );
  }
}
