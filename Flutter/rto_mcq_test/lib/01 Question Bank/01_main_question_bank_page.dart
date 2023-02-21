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


  int _index = 0;
  PageController pageController = PageController();
  Variable ProjectVariable = Variable();
  List< Map<String,dynamic >> question=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for(int i =0;i<ProjectVariable.question.length;i++){
      if(ProjectVariable.question[i]["sign"]==false){
        question.add(ProjectVariable.question[i]);
      }
    }
  }

  @override
  Widget build(BuildContext context) {


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
                        setState(() {
                          selectmenu=1;
                          _index=0;
                          pageController.animateToPage(_index=0 ,curve: Curves.bounceInOut, duration: Duration(milliseconds: 50),);
                          question=[];
                          for(int i =0;i<ProjectVariable.question.length;i++){
                            if(ProjectVariable.question[i]["sign"]==false){
                              question.add(ProjectVariable.question[i]);
                            }
                          }
                        });
                      },
                      child: Text("QUESTIONS",style: TextStyle(color: 1==selectmenu?Colors.white:Colors.grey,),),
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: (){
                        setState(() {
                          selectmenu=2;
                          _index=0;
                          pageController.animateToPage(_index=0 ,curve: Curves.bounceInOut, duration: Duration(milliseconds: 50),);
                          question=[];
                          for(int i =0;i<ProjectVariable.question.length;i++){
                            if(ProjectVariable.question[i]["sign"]==true){
                              question.add(ProjectVariable.question[i]);
                            }
                          }
                        });
                      },
                      child: Text("TRAFFIC SIGNS",style: TextStyle(color: 2==selectmenu?Colors.white:Colors.grey,),),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: question.length>0?
                PageView.builder(
                itemCount:  question.length,
                controller: pageController,
                onPageChanged: (int index) => setState(() => _index = index),
                itemBuilder: (_, i) {
                  return Transform.scale(
                    scale: i == _index ? 1 : 0.9,
                    child: ListView(
                      children: [
                        Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                  elevation: 20,
                                  child: Container(
                                    margin: EdgeInsets.all(10),
                                    child: Row(
                                      crossAxisAlignment : CrossAxisAlignment.start,
                                      children: [
                                        Expanded(child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            selectmenu==1  ?
                                            Text("Q-${i+1} : ${question[i]["question"]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                                            :Container(alignment: AlignmentDirectional.center,child: Image.network(question[i]["question"])),
                                            Text("A : ${question[i]["answer"]}",style: TextStyle(color: Colors.grey),),
                                          ],
                                        )),
                                        Container(child: Icon(Icons.bookmark))
                                      ],
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {  },
                                  child: Container(
                                      padding: EdgeInsets.all(15),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: ProjectVariable.headercolor,
                                      ),
                                      child: Text("Bookmark",style: TextStyle(color:ProjectVariable.fontcolor),)
                                  ),
                                ),
                              ],
                            ),
                      ],
                    ),
                  );
                },
                  )
                :Center(child: CircularProgressIndicator()),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(5, 0, 5, 20),
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                elevation: 20,
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children:[
                      Container(
                        child: InkWell(
                          onTap: (){
                            pageController.animateToPage(_index>0?--_index:_index , duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
                          },
                          child: Icon(Icons.keyboard_arrow_left,size: 35,color:_index>0?ProjectVariable.headercolor: Colors.grey,)
                        ),
                      ),
                      Expanded(
                        child: Container(child: Center(child: Text("${_index+1}/${question.length}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: ProjectVariable.headercolor))),
                          margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        ),
                      ),
                      Container(
                        child: InkWell(
                            onTap: (){
                              pageController.animateToPage(_index<question.length-1?++_index:_index, duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
                            },
                            child: Icon(Icons.keyboard_arrow_right,size: 35,color:_index<question.length-1?ProjectVariable.headercolor: Colors.grey,)
                        ),
                      ),
                    ]
                  ),
                )
              ),
            ),
          ],
        )
      )
    );
  }
}
