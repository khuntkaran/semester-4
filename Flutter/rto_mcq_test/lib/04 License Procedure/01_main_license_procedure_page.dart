import 'package:flutter/material.dart';
import 'package:rto_mcq_test/04%20License%20Procedure/02_license_page_dropdown.dart';
import 'package:rto_mcq_test/variable.dart';

class MainLicenseProcedurePage extends StatefulWidget {
  const MainLicenseProcedurePage({Key? key}) : super(key: key);

  @override
  State<MainLicenseProcedurePage> createState() => _MainLicenseProcedurePageState();
}

class _MainLicenseProcedurePageState extends State<MainLicenseProcedurePage> {

  Variable ProjectVariable = Variable();
  LicensePageDropdown LPD = LicensePageDropdown();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: ProjectVariable.headercolor,
        title: Text("Driving Licence Process",style: TextStyle(color:ProjectVariable.fontcolor ),),
      ),
        body: SingleChildScrollView(
          child: Container(
            child: LPD.DropdownMaker(NewDrivingLicence,"New Driving Licence"),
          ),
        )
    ));
  }
}

List<Map<String,dynamic>> NewDrivingLicence=[
  {"heading":"Application Form","subtitle":["sadfasdfa","fa","fsaddfdas"]},
  {"heading":"Eligibility","subtitle":["asdffasddf","fdahcksdhafhasdghfsdghfgasdghfasgfgasiugfiuasdghfuasgfiasdgfgsdfgsdgfsadgfgasdfgasdgfasgdfgasdgfiasdghfuigiafghasadhfhfjuethv iushofhiulgfhfpbwfuyofnasjfiyfjsdksjfhsryweiojfshfsajhfiouyhuhasvnauhveyfio"]},
  {"heading":"Necessary Documents","subtitle":[]},
  {"heading":"Fee","subtitle":[]},
  {"heading":"Procedure Of Examination","subtitle":[]},
  {"heading":"Dri","subtitle":[]}
];