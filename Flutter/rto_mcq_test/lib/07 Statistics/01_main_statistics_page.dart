import 'package:flutter/material.dart';

class MainStatisticsPage extends StatefulWidget {
  const MainStatisticsPage({Key? key}) : super(key: key);

  @override
  State<MainStatisticsPage> createState() => _MainMainStatisticsPageState();
}

class _MainMainStatisticsPageState extends State<MainStatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Center(child: Container(child: Text("StatisticsPage"),))));
  }
}
