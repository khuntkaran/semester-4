import 'package:flutter/material.dart';
import 'package:rto_mcq_test/03%20Exam/01_main_exam_page.dart';
import 'package:rto_mcq_test/variable.dart';

class InstructionsPage extends StatefulWidget {
  const InstructionsPage({Key? key}) : super(key: key);

  @override
  State<InstructionsPage> createState() => _InstructionsPageState();
}

class _InstructionsPageState extends State<InstructionsPage> {
  Variable ProjectVariable = Variable();

  Widget instuctionRow(String note){
    return Container(
      margin: EdgeInsets.fromLTRB(0, 3, 0, 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(margin:EdgeInsets.fromLTRB(0,4,3,0),child: Icon(Icons.circle,size: 10,color: Colors.grey,)),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("${note}",style: TextStyle(color: Colors.grey,fontSize: 15),),
            ],
          ))
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("Exam"),
        backgroundColor: ProjectVariable.headercolor,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(5),
          child: Card(
            elevation: 10,
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Instructions",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
                  instuctionRow("Subject like Rules and Regulations of traffic, and traffic signage's are included in the test."),
                  instuctionRow("15 questions are asked in the test at random, out of which 11 question are required to be answered correctly to pass the test."),
                  instuctionRow("45 seconds are allowed to answer each question"),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: ProjectVariable.headercolor,
                          ),
                          child: TextButton(
                            onPressed: (){
                              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){return MainExamPage();}));
                            },
                            child: Text("Start Exam",style: TextStyle(color: ProjectVariable.fontcolor,fontSize: 16),)
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
