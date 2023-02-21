import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rto_mcq_test/variable.dart';

class MainExamPage extends StatefulWidget {
  const MainExamPage({Key? key}) : super(key: key);

  @override
  State<MainExamPage> createState() => _MainExamPageState();
}

class _MainExamPageState extends State<MainExamPage> {
  int _index = 0;
  PageController pageController = PageController();
  Variable ProjectVariable = Variable();
  List< Map<String,dynamic >> question=[];
  int _truequestion=0;
  int _falsequestion=0;
  String choice="";
  int questionTime=11;
  Duration time = Duration();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    question=ProjectVariable.question;
    time=Duration(seconds: questionTime);
    setState(() {
      Timer.periodic(Duration(seconds: 1), (timer) { setTime();});
    });
  }

  void setTime(){
    if(time.inSeconds==0){
      if(question[_index]["answer"]==question[_index][choice]){
        _truequestion++;
      }
      else{
        _falsequestion++;
      }
      choice="";
      if(_index<question.length-1){
        time=Duration(seconds: questionTime);
        pageController.animateToPage(_index<question.length-1?++_index:_index ,curve: Curves.bounceInOut, duration: Duration(milliseconds: 50),);
      }
      else{
        Navigator.of(context).pop();
      }
    }
    setState(() {
      time=Duration(seconds: time.inSeconds-1);
    });
  }

  @override
  Widget build(BuildContext context) {
    Variable ProjectVariable = Variable();
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation:0,
              titleSpacing: 0,
              actions: [
                Container(
                    child: Row(
                      children: [
                        Text("${_index+1}/${question.length}"),
                      ],
                    )
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(4, 10, 4, 10),
                    padding: EdgeInsets.fromLTRB(10,0,10,2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ProjectVariable.fontcolor,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.watch_later_outlined,color: ProjectVariable.headercolor,),
                        Text("${time.inSeconds}",style: TextStyle(color:ProjectVariable.headercolor),),
                        Text("s",style: TextStyle(color:ProjectVariable.headercolor),),
                      ],
                    )
                ),
              ],
              title:  Container
                (
                margin: EdgeInsets.fromLTRB(10, 5, 0, 4),
                child: Text("Exam",style:TextStyle(color:Colors.white,)),
              ),
              backgroundColor: ProjectVariable.headercolor,
            ),
            body: Column(
              children: [
                Expanded(
                  child: Container(
                    height: 700,
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: question.length>0?
                    PageView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount:  question.length,
                      controller: pageController,
                      onPageChanged: (int index) => setState(() => _index = index),
                      itemBuilder: (_, i) {
                        return Transform.scale(
                          scale: i == _index ? 1 : 0.9,
                          child:  ListView(
                            children: [
                              Column(
                                children: [
                                  Card(
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                      elevation: 20,
                                      child: Container(
                                        margin: EdgeInsets.all(10),
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  question[i]["sign"]==false  ?
                                                  Text("Q-${i+1} : ${question[i]["question"]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                                                      :Container(alignment: AlignmentDirectional.center,child: Image.network(question[i]["question"],height: 200,)),
                                                ],
                                              ),
                                            ),
                                            Container(child: Icon(Icons.bookmark))
                                          ],
                                        ),
                                      ),
                                    ),
                                  InkWell(
                                    onTap:(){
                                      setState(() {
                                        choice="a";
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
                                      child: Card(
                                        color: choice=="a"?ProjectVariable.headercolor:Colors.white,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                        elevation: 20,
                                        child: Container(
                                          margin: EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              Text("A : ",style: TextStyle(fontWeight: FontWeight.bold,color: choice=="a"?Colors.white:Colors.black,),),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(question[i]["a"],style: TextStyle(color: choice=="a"?Colors.white:Colors.black,),),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap:(){
                                      setState((){
                                        choice="b";
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
                                      child: Card(
                                        color: choice=="b"?ProjectVariable.headercolor:Colors.white,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                        elevation: 20,
                                        child: Container(
                                          margin: EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              Text("B : ",style: TextStyle(fontWeight: FontWeight.bold,color: choice=="b"?Colors.white:Colors.black,),),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(question[i]["b"],style: TextStyle(color: choice=="b"?Colors.white:Colors.black,),),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap:(){
                                      setState((){
                                        choice="c";
                                      });
                                    },
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(5, 10, 5, 20),
                                      child: Card(
                                        color: choice=="c"?ProjectVariable.headercolor:Colors.white,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                        elevation: 20,
                                        child: Container(
                                          margin: EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              Text("C : ",style: TextStyle(fontWeight: FontWeight.bold,color: choice=="c"?Colors.white:Colors.black,),),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(question[i]["c"],style: TextStyle(color: choice=="c"?Colors.white:Colors.black,),),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
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
                        margin: EdgeInsets.fromLTRB(10,3,10,3),
                        child: Row(
                            children:[
                              Expanded(
                                child: Container(child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            padding: EdgeInsets.fromLTRB(10,2,10,2),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15),
                                              color: Colors.green,
                                            ),
                                            child: Row(
                                              children: [
                                                Icon(Icons.check,color: ProjectVariable.fontcolor,),
                                                Text("${_truequestion}",style: TextStyle(color:ProjectVariable.fontcolor),),
                                              ],
                                            )
                                        ),
                                        Container(
                                            padding: EdgeInsets.fromLTRB(10,2,10,2),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(15),
                                              color: Colors.red,
                                            ),
                                            child: Row(
                                              children: [
                                                Icon(Icons.confirmation_num_sharp,color: ProjectVariable.fontcolor,),
                                                Text("${_falsequestion}",style: TextStyle(color:ProjectVariable.fontcolor),),
                                              ],
                                            )
                                        ),
                                      ],
                                    )
                                ),
                                  margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                                ),
                              ),
                              Container(
                                child: TextButton(
                                  onPressed:_index==question.length-1?
                                      (){
                                        Navigator.of(context).pop();
                                      }:
                                      (){
                                    if(question[_index]["answer"]==question[_index][choice]){
                                      _truequestion++;
                                    }
                                    else{
                                      _falsequestion++;
                                    }
                                    pageController.animateToPage(_index<question.length-1?++_index:_index ,curve: Curves.bounceInOut, duration: Duration(milliseconds: 50),);

                                    setState(() {
                                      choice="";
                                      time=Duration(seconds: questionTime);
                                    });
                                  },
                                  child: Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: ProjectVariable.headercolor,
                                      ),
                                      child: Row(
                                        children: [
                                          Text(_index==question.length-1?"Finish":"Next Question",style: TextStyle(color: ProjectVariable.fontcolor),),
                                          Icon(Icons.keyboard_arrow_right,size: 35,color: Colors.white,),
                                        ],
                                      )
                                  ),
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
