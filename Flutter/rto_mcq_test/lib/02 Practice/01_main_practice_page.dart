import 'package:flutter/material.dart';
import 'package:rto_mcq_test/variable.dart';

class MainPracticePage extends StatefulWidget {
  const MainPracticePage({Key? key}) : super(key: key);

  @override
  State<MainPracticePage> createState() => _MainPracticePageState();
}

class _MainPracticePageState extends State<MainPracticePage> {
  int selectmenu=1;

  String dropdownvalue = "All";
  var items = ['All','Bookmarks','Question','Traffic signs'];

  int _index = 0;
  PageController pageController = PageController();
  Variable ProjectVariable = Variable();
  List< Map<String,dynamic >> question=[];
  List< Map<String,dynamic >> validation=[] ;
  int _truequestion=0;
  int _falsequestion=0;
  String choice="";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    question=ProjectVariable.question;
    declareValidation();
  }

  void declareValidation(){
    setState(() {
      _truequestion=0;
      _falsequestion=0;
      validation=[];
      for(int i=0;i<question.length;i++){
        Map<String,dynamic> map ={};
        map["attemp"]=false;
        map["true"]="";
        map["false"]="";
        validation.add(map);
      }
    });
  }

  void choseoption(int index,String chose){
    if(question[index]["answer"]==question[index][chose]){
      setState(() {
        validation[index]["attemp"]=true;
        validation[index]["true"]=chose;
        _truequestion++;
      });
    }
    else{
      setState(() {
        validation[index]["attemp"]=true;
        validation[index]["true"]=question[index]["answer"]==question[index]["a"]?"a":question[index]["answer"]==question[index]["b"]?"b":"c";
        validation[index]["false"]=chose;
        _falsequestion++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                elevation: 0,
                backgroundColor: ProjectVariable.headercolor,
                title: Text("Practice"),
                actions: [
                  Container(child: Center(child: Text("${_index+1}/${question.length}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: ProjectVariable.fontcolor))),
                    margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
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
                        child: Container(
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                TextButton(
                                  onPressed: (){
                                    setState(() {
                                      selectmenu=1;
                                      question=[];
                                      question=ProjectVariable.question;
                                      _index=0;
                                      pageController.animateToPage(_index=0 ,curve: Curves.bounceInOut, duration: Duration(milliseconds: 50),);
                                      declareValidation();
                                    });
                                  },
                                  child: Text("ALL",style: TextStyle(color: 1==selectmenu?Colors.white:Colors.grey,),),
                                ),
                                TextButton(
                                  onPressed: (){
                                    setState(() {
                                      selectmenu=2;
                                      question=[];
                                      for(int i =0;i<ProjectVariable.question.length;i++){
                                        if(ProjectVariable.question[i]["sign"]==false){
                                          question.add(ProjectVariable.question[i]);
                                        }
                                      }
                                      _index=0;
                                      pageController.animateToPage(_index=0 ,curve: Curves.bounceInOut, duration: Duration(milliseconds: 50),);
                                      declareValidation();
                                    });
                                  },
                                  child: Text("QUESTIONS",style: TextStyle(color: 2==selectmenu?Colors.white:Colors.grey,),),
                                ),
                                TextButton(
                                  onPressed: (){
                                    setState(() {
                                      selectmenu=3;
                                      question=[];
                                      for(int i =0;i<ProjectVariable.question.length;i++){
                                        if(ProjectVariable.question[i]["sign"]==true){
                                          question.add(ProjectVariable.question[i]);
                                        }
                                      }
                                      _index=0;
                                      pageController.animateToPage(_index=0 ,curve: Curves.bounceInOut, duration: Duration(milliseconds: 50),);
                                      declareValidation();
                                    });
                                  },
                                  child: Text("TRAFFIC SIGNS",style: TextStyle(color: 3==selectmenu?Colors.white:Colors.grey,),),
                                ),
                                TextButton(
                                  onPressed: (){
                                    setState(() {
                                      selectmenu=4;
                                      // question=[];
                                      // for(int i =0;i<ProjectVariable.question.length;i++){
                                      //   if(ProjectVariable.question[i]["sign"]==true){
                                      //     question.add(ProjectVariable.question[i]);
                                      //   }
                                      // }
                                      _index=0;
                                      pageController.animateToPage(_index=0 ,curve: Curves.bounceInOut, duration: Duration(milliseconds: 50),);
                                      declareValidation();
                                    });
                                  },
                                  child: Text("BOOKMARKS",style: TextStyle(color: 4==selectmenu?Colors.white:Colors.grey,),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Container(
                    margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    height: 700,
                    child: question.length>0?
                    PageView.builder(
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
                                          crossAxisAlignment : CrossAxisAlignment.start,
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
                                    onTap:validation[_index]["attemp"]==false?(){
                                      choice="a";
                                      choseoption(_index,choice);
                                    }:(){},
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(5, 20, 5, 0),
                                      child: Card(
                                        color:validation[i]["true"]=="a"?Colors.green:validation[i]["false"]=="a"?Colors.red:Colors.white,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                        elevation: 20,
                                        child: Container(
                                          margin: EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              Text("A : ",style: TextStyle(fontWeight: FontWeight.bold),),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(question[i]["a"]),
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

                                    onTap:validation[_index]["attemp"]==false?(){
                                      choice="b";
                                      choseoption(_index,choice);
                                    }:(){},
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(5, 10, 5, 0),
                                      child: Card(
                                        color:validation[i]["true"]=="b"?Colors.green:validation[i]["false"]=="b"?Colors.red:Colors.white,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                        elevation: 20,
                                        child: Container(
                                          margin: EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              Text("B : ",style: TextStyle(fontWeight: FontWeight.bold),),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(question[i]["b"]),
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
                                    onTap:validation[_index]["attemp"]==false?(){
                                      choice="c";
                                      choseoption(_index,choice);
                                    }:(){},
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(5, 10, 5, 20),
                                      child: Card(
                                        color:validation[i]["true"]=="c"?Colors.green:validation[i]["false"]=="c"?Colors.red:Colors.white,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                                        elevation: 20,
                                        child: Container(
                                          margin: EdgeInsets.all(10),
                                          child: Row(
                                            children: [
                                              Text("C : ",style: TextStyle(fontWeight: FontWeight.bold),),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(question[i]["c"]),
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
                                child: Container(child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
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
                                                Icon(Icons.crop_square_sharp,color: ProjectVariable.fontcolor,),
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
