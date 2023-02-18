import 'package:flutter/material.dart';

class MainDrivingLawsPage extends StatefulWidget {
  const MainDrivingLawsPage({Key? key}) : super(key: key);

  @override
  State<MainDrivingLawsPage> createState() => _MainDrivingLawsPageState();
}

class _MainDrivingLawsPageState extends State<MainDrivingLawsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Center(child: Container(child: Text("DrivingLawsPage"),))));
  }
}
