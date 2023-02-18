import 'package:flutter/material.dart';

class MainRTOCodesPage extends StatefulWidget {
  const MainRTOCodesPage({Key? key}) : super(key: key);

  @override
  State<MainRTOCodesPage> createState() => _MainRTOCodesPageState();
}

class _MainRTOCodesPageState extends State<MainRTOCodesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Center(child: Container(child: Text("RTOCodesPage"),))));
  }
}
