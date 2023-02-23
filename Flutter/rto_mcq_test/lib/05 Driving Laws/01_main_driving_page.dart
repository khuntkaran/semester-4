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
                      itemCount: 5,
                        itemBuilder: (context,index){
                        return Container(
                          child: Card(
                            elevation: 5,
                            child: Container(
                              margin: EdgeInsets.all(15),
                              child: Row(
                                children: [
                                  Expanded(child: Text("Offences"),flex: 2,),
                                  Expanded(child: Text("Penalty"))
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
