import 'package:first_app/08-Text-TextField-Button/05-Click_Button_Print_Text.dart';
import 'package:flutter/material.dart';

import 'package:first_app/07-UI-Design/02-horizontal_three_part.dart';
import 'package:first_app/07-UI-Design/03-vertical_three_part.dart';
import 'package:first_app/07-UI-Design/04-1-nine_equale_part.dart';
import 'package:first_app/07-UI-Design/04-2-nine_different_part.dart';
import 'package:first_app/07-UI-Design/extra-01.dart';
import 'package:first_app/07-UI-Design/extra-02.dart';
import 'package:first_app/07-UI-Design/extra-03.dart';
import 'package:first_app/07-UI-Design/extra-04.dart';
import 'package:first_app/07-UI-Design/extra-05.dart';

import 'package:first_app/08-Text-TextField-Button/01-Text_Display.dart';
import 'package:first_app/08-Text-TextField-Button/02-Custom_Text_Change_Fonts.dart';
import 'package:first_app/08-Text-TextField-Button/03-TextField_Controller.dart';
import 'package:first_app/08-Text-TextField-Button/04-TextField_Design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',


      //====================Lab-7=================
      // home: HorizontalThreePart(),
      // home: VerticalThreePart(),
      // home: NineEqualePart(),
      // home: NineDifferentPart(),

      // home: Extra_01(),
      // home: Extra_02(),
      // home: Extra_03(),
      // home: Extra_04(),
      // home: Extra_05(),
      //==========================================


      //==================Lab-8==================
      //   home: TextDisplay(),
      //   home: CustomTextChangeFonts(),
      //   home: TextFieldController(),
      //   home: TextFieldDesign(),
        home:ClickButtonPrintText(),
      //=========================================
    );
  }
}
