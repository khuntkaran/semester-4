import 'package:flutter/material.dart';

class MainSettingPage extends StatefulWidget {
  const MainSettingPage({Key? key}) : super(key: key);

  @override
  State<MainSettingPage> createState() => _MainSettingPageState();
}

class _MainSettingPageState extends State<MainSettingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Center(child: Container(child: Text("SettingPage"),))));
  }
}
