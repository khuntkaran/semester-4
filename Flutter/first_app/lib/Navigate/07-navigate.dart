import 'package:first_app/07-UI-Design/02-horizontal_three_part.dart';
import 'package:first_app/07-UI-Design/03-vertical_three_part.dart';
import 'package:first_app/07-UI-Design/04-1-nine_equale_part.dart';
import 'package:first_app/07-UI-Design/04-2-nine_different_part.dart';
import 'package:first_app/07-UI-Design/extra-01.dart';
import 'package:first_app/07-UI-Design/extra-02.dart';
import 'package:first_app/07-UI-Design/extra-03.dart';
import 'package:first_app/07-UI-Design/extra-04.dart';

import 'package:first_app/Navigate/navigate_main.dart';
import 'package:flutter/material.dart';

class SevenNavigate extends StatefulWidget{
  @override
  State<SevenNavigate> createState() => _SevenNavigateState();
}

class _SevenNavigateState extends State<SevenNavigate> {
  @override
  Widget build(BuildContext context) {
    myCard card=myCard(context);
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("My App"),backgroundColor: Colors.greenAccent,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            card.makeCard(HorizontalThreePart(), "02-horizontal_three_part"),
            card.makeCard(VerticalThreePart(), "03-vertical_three_part"),
            card.makeCard(NineEqualePart(), "04-1-nine_equale_part"),
            card.makeCard(NineDifferentPart(), "04-2-nine_different_part"),
            card.makeCard(Extra_01(), "extra-01"),
            card.makeCard(Extra_02(), "extra-02"),
            card.makeCard(Extra_03(), "extra-03"),
            card.makeCard(Extra_04(), "extra-04"),
          ],
        ),
      ),
    ));
  }
}