import 'package:first_app/09-Images/05-splash_screen.dart';
import 'package:first_app/10-Navigation/02-1-name_navigation_one.dart';
import 'package:first_app/10-Navigation/02-2-name_navigation_two.dart';
import 'package:first_app/Navigate/navigate_main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/first': (context) =>  NameRouteNavigationOne(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const NameRouteNavigationTwo(),
      },
    );
  }
}
