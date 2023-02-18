import 'package:flutter/material.dart';

class MainExamPage extends StatefulWidget {
  const MainExamPage({Key? key}) : super(key: key);

  @override
  State<MainExamPage> createState() => _MainExamPageState();
}

class _MainExamPageState extends State<MainExamPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Center(child: Container(child: Text("ExamPage"),))));
  }
}
