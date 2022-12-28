import 'package:flutter/material.dart';
import 'my_home_page.dart';

import '07-UI-Design/02-horizontal_three_part.dart';
import '07-UI-Design/03-vertical_three_part.dart';
import '07-UI-Design/04-1-nine_equale_part.dart';
import '07-UI-Design/04-2-nine_different_part.dart';

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
      home: NineDifferentPart(),
    );
  }
}
