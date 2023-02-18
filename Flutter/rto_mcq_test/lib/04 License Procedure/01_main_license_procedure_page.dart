import 'package:flutter/material.dart';

class MainLicenseProcedurePage extends StatefulWidget {
  const MainLicenseProcedurePage({Key? key}) : super(key: key);

  @override
  State<MainLicenseProcedurePage> createState() => _MainLicenseProcedurePageState();
}

class _MainLicenseProcedurePageState extends State<MainLicenseProcedurePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Center(child: Container(child: Text("LicenseProcedurePage"),))));
  }
}
