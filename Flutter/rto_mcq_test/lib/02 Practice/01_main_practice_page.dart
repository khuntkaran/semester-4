import 'package:flutter/material.dart';

class MainPracticePage extends StatefulWidget {
  const MainPracticePage({Key? key}) : super(key: key);

  @override
  State<MainPracticePage> createState() => _MainPracticePageState();
}

class _MainPracticePageState extends State<MainPracticePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Center(child: Container(child: Text("PracticePage"),))));
  }
}
