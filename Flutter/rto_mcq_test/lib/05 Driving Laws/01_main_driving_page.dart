import 'package:flutter/material.dart';
import 'package:rto_mcq_test/variable.dart';

class MainDrivingLawsPage extends StatefulWidget {
  const MainDrivingLawsPage({Key? key}) : super(key: key);

  @override
  State<MainDrivingLawsPage> createState() => _MainDrivingLawsPageState();
}

class _MainDrivingLawsPageState extends State<MainDrivingLawsPage> {
  Variable ProjectVariable = Variable();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Driving Laws",style: TextStyle(color: ProjectVariable.fontcolor),),
            backgroundColor: ProjectVariable.headercolor,
          ),
            body: Column(
              children: [
                Card(
                  elevation: 5,
                  child: Container(
                    margin: EdgeInsets.all(15),
                    child: Row(
                      children: [
                        Expanded(child: Text("Offences",style: TextStyle(color: ProjectVariable.headercolor,fontWeight: FontWeight.w700,fontSize: 15),),flex: 2,),
                        Expanded(child: Text("Penalty",style: TextStyle(color: ProjectVariable.headercolor,fontWeight: FontWeight.w700,fontSize: 15)))
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                        shrinkWrap:true,
                      itemCount: Laws.length,
                        itemBuilder: (context,index){
                        return Container(
                          child: Card(
                            elevation: 5,
                            child: Container(
                              margin: EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Expanded(child: Text("${Laws[index]["offences"]}",style: TextStyle(fontWeight: FontWeight.w500),),flex: 2,),
                                  Expanded(child: Text("Rs.${Laws[index]["penalty"]}/-"))
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                    ),
                  ),
                ),
              ],
            )
        )
    );
  }
}

List<Map<String,dynamic>> Laws=[
  {"offences":"Driving without a Valid Licence","penalty":500},
  {"offences":"Not carrying documents as required","penalty":100},
  {"offences":"Driving without Valid Insurance","penalty":1000},
  {"offences":"Driving without Valid Permit","penalty":5000},
  {"offences":"Driving without Valid Fitness","penalty":5000},
  {"offences":"Vehicle without R.C.","penalty":2000},
  {"offences":"Use of Offensive Number Plate for vehicle used in driving","penalty":100},
  {"offences":"Disobeying Traffic Police Officer in","penalty":100},
  {"offences":"Driving against Police Signal","penalty":100},
  {"offences":"Disobeying manual Traffic Signal","penalty":100},
  {"offences":"Disobeying Traffic signal /Sign Board","penalty":100},
  {"offences":"Failing to give Signal","penalty":100},
  {"offences":"Overtaking from Wrong Side","penalty":100},
  {"offences":"Driving without Horn","penalty":100},
  {"offences":"Using High Beam where not required","penalty":100},
  {"offences":"Violation of Mandatory Signs","penalty":100},
  {"offences":"Violation of Stop Line","penalty":100},
  {"offences":"Driving on Footpath","penalty":100},
];
