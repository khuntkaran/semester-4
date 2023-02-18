import 'dart:math';

import 'package:flutter/material.dart';
import 'package:rto_mcq_test/variable.dart';

class MainQuestionBankPage extends StatefulWidget {
  const MainQuestionBankPage({Key? key}) : super(key: key);

  @override
  State<MainQuestionBankPage> createState() => _MainQuestionBankPageState();
}

class _MainQuestionBankPageState extends State<MainQuestionBankPage> {
  int selectmenu=1;

  String dropdownvalue = "All";
  var items = ['All','Bookmarks',];

  @override
  Widget build(BuildContext context) {

    Variable ProjectVariable = Variable();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ProjectVariable.headercolor,
          title: Text("Question Bank"),
          actions: [
            DropdownButtonHideUnderline(
              child: DropdownButton(
                dropdownColor: ProjectVariable.headercolor,
                value: dropdownvalue,
                icon: const Icon(Icons.keyboard_arrow_down,color: Colors.white,),
                items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items,style: TextStyle(color: Colors.white),),
                );
              }).toList(),
                onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue=newValue!;
                });
              },
              ),
            ),
          ]
        ),
        body: Column(
          children: [
            Container(
              color: ProjectVariable.headercolor,
              child: Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: (){
                        setState(() {selectmenu=1;});
                      },
                      child: Text("QUESTIONS",style: TextStyle(color: 1==selectmenu?Colors.white:Colors.grey,),),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: (){
                        setState(() {
                          selectmenu=2;
                        });
                      },
                      child: Text("TRAFFIC SIGNS",style: TextStyle(color: 2==selectmenu?Colors.white:Colors.grey,),),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: SingleChildScrollView(
              child: Container(
                child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(5, 80, 5, 20),
                        child: Card(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                          elevation: 20,
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text("Question"),
                                  Text("answer")
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {  },
                        child: Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: ProjectVariable.headercolor,
                          ),
                          child: Text("Bookmark",style: TextStyle(color:ProjectVariable.fontcolor),)
                      ),
                      ),
                    ],
                  )
                ),
            )
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5, 20, 5, 20),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                elevation: 20,
                child: Row(
                  children: [
                    Text("botton")
                  ],
                ),
              ),
            ),
          ],
        )
      )
    );
  }
}
