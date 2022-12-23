import 'package:first_app/vertical_three_part.dart';
import 'package:flutter/material.dart';

import 'horizontal_three_part.dart';
import 'my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      // home: HorizontalThreePart(),
      // home: VerticalThreePart(),
      
    );
  }
}
