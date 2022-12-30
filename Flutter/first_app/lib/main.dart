import 'package:flutter/material.dart';
import 'my_home_page.dart';

import '07-UI-Design/02-horizontal_three_part.dart';
import '07-UI-Design/03-vertical_three_part.dart';
import '07-UI-Design/04-1-nine_equale_part.dart';
import '07-UI-Design/04-2-nine_different_part.dart';
import '07-UI-Design/extra-01.dart';
import '07-UI-Design/extra-02.dart';
import '07-UI-Design/extra-03.dart';
import '07-UI-Design/extra-04.dart';
import '07-UI-Design/extra-05.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      // home: MyHomePage(),
      // home: HorizontalThreePart(),
      // home: VerticalThreePart(),
      // home: NineEqualePart(),
      // home: NineDifferentPart(),

      // home : Extra_01(),
      // home : Extra_02(),
      // home: Extra_03(),
      home: Extra_04(),
      // home: Extra_05()
    );
  }
}
