import 'package:first_app/08-Text-TextField-Button/01-text_display.dart';
import 'package:first_app/08-Text-TextField-Button/02-custom_text_change_Fonts.dart';
import 'package:first_app/08-Text-TextField-Button/03-textfield_controller.dart';
import 'package:first_app/08-Text-TextField-Button/04-textfield_design.dart';
import 'package:first_app/08-Text-TextField-Button/05-click_button_print_text.dart';

import 'package:first_app/Navigate/navigate_main.dart';
import 'package:flutter/material.dart';

class EightNavigate extends StatefulWidget{
  @override
  State<EightNavigate> createState() => _EightNavigateState();
}

class _EightNavigateState extends State<EightNavigate> {
  @override
  Widget build(BuildContext context) {
    myCard card=myCard(context);
   return SafeArea(child: Scaffold(
     appBar: AppBar(title: Text("08-Text-TextField-Button"),backgroundColor: Colors.cyan,),
     body: SingleChildScrollView(
       child: Column(
         children: [
           card.makeCard(TextDisplay(), "01-text_display"),
           card.makeCard(CustomTextChangeFonts(), "02-custom_text_change_Fonts"),
           card.makeCard(TextFieldController(), "03-textfield_controller"),
           card.makeCard(TextFieldDesign(), "04-textfield_design"),
           card.makeCard(ClickButtonPrintText(), "05-click_button_print_text"),
         ],
       ),
     ),
   ));
  }
}