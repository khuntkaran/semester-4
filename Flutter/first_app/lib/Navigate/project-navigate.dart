import 'package:first_app/Projects/01-images_in_container.dart';
import 'package:first_app/Projects/02-simple_interest_calculator.dart';

import 'package:first_app/Navigate/navigate_main.dart';
import 'package:first_app/Projects/Matrimony/01-pre_login_page.dart';
import 'package:first_app/Projects/UI-Design/01-started_page.dart';
import 'package:flutter/material.dart';

class ProjectNavigate extends StatefulWidget {
  @override
  State<ProjectNavigate> createState() => _ProjectNavigateState();
}

class _ProjectNavigateState extends State<ProjectNavigate> {
  @override
  Widget build(BuildContext context) {
    myCard card=myCard(context);
   return SafeArea(child: Scaffold(
     appBar: AppBar(title: Text("My App"),backgroundColor: Colors.greenAccent,),
     body: SingleChildScrollView(
       child: Column(
         children: [
           card.makeCard(ImagesInContainer(), "01-images_in_container"),
           card.makeCard(SimpleInterestCalculator(), "02-simple_interest_calculator"),
           card.makeCard(PreLoginPage(), "Matrimony"),
           card.makeCard(StartedPage(), "UI-Design")
         ],
       ),
     ),
   ));
  }
}