import 'package:first_app/11-Appbar/01-tabview.dart';
import 'package:first_app/11-Appbar/02-navigation_drawer.dart';
import 'package:first_app/11-Appbar/03-dialogbox.dart';
import 'package:first_app/Navigate/navigate_main.dart';
import 'package:flutter/material.dart';

class ElevenNavigate extends StatefulWidget {
  const ElevenNavigate({Key? key}) : super(key: key);

  @override
  State<ElevenNavigate> createState() => _ElevenNavigateState();
}

class _ElevenNavigateState extends State<ElevenNavigate> {
  @override
  Widget build(BuildContext context) {
    myCard card=myCard(context);
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("11-Appbar"),backgroundColor: Colors.cyan,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            card.makeCard(TabView(), "01-tab_view"),
            card.makeCard(NavigationDrawer(), "02-navigation_drawer"),
            card.makeCard(Dialogbox(), "03-dialogbox"),

          ],
        ),
      ),
    ));
  }
}