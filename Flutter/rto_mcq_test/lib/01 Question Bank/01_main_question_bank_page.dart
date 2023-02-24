import 'package:flutter/material.dart';
import 'package:rto_mcq_test/my_database.dart';
import 'package:rto_mcq_test/variable.dart';
import 'package:string_validator/string_validator.dart';


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

  List<int> bookmarks=[];

  @override
  void initState()  {
    // TODO: implement initState
    super.initState();
    for(int i =0;i<ProjectVariable.question.length;i++){
      if(ProjectVariable.question[i]["sign"]==false){
        question.add(ProjectVariable.question[i]);
      }
    }
    MyDatabase().getDataFromBookmarksTable().then((value){
      setState(() {
        bookmarks=value;
      });
    });

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
                  question=[];
                  if(selectmenu==1){
                    if(dropdownvalue=="Bookmarks"){
                      for(int i =0;i<ProjectVariable.question.length;i++){
                        if(ProjectVariable.question[i]["sign"]==false && bookmarks.contains(ProjectVariable.question[i]["_id"] )){
                          question.add(ProjectVariable.question[i]);
                        }
                      }
                    }
                    else{
                      for(int i =0;i<ProjectVariable.question.length;i++){
                        if(ProjectVariable.question[i]["sign"]==false){
                          question.add(ProjectVariable.question[i]);
                        }
                      }
                    }
                  }
                  else{
                    if(dropdownvalue=="Bookmarks"){
                      for(int i =0;i<ProjectVariable.question.length;i++){
                        if(ProjectVariable.question[i]["sign"]==true && bookmarks.contains(ProjectVariable.question[i]["_id"] )){
                          question.add(ProjectVariable.question[i]);
                        }
                      }
                    }
                    else{
                      for(int i =0;i<ProjectVariable.question.length;i++){
                        if(ProjectVariable.question[i]["sign"]==true){
                          question.add(ProjectVariable.question[i]);
                        }
                      }
                    }
                  }
                  _index=0;
                  if(question.length>0){
                    pageController.animateToPage(_index=0 ,curve: Curves.bounceInOut, duration: Duration(milliseconds: 50),);
                  }
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
                          question=[];
                          if(dropdownvalue=="Bookmarks"){
                            for(int i =0;i<ProjectVariable.question.length;i++){
                              if(ProjectVariable.question[i]["sign"]==false && bookmarks.contains(ProjectVariable.question[i]["_id"] )){
                                    question.add(ProjectVariable.question[i]);
                                }
                              }
                            }
                          else{
                            for(int i =0;i<ProjectVariable.question.length;i++){
                              if(ProjectVariable.question[i]["sign"]==false){
                                  question.add(ProjectVariable.question[i]);
                              }
                            }
                          }
                          if(question.length>0){
                            pageController.animateToPage(_index=0 ,curve: Curves.bounceInOut, duration: Duration(milliseconds: 50),);
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
                          question=[];
                          if(dropdownvalue=="Bookmarks"){
                            for(int i =0;i<ProjectVariable.question.length;i++){
                              if(ProjectVariable.question[i]["sign"]==true && bookmarks.contains(ProjectVariable.question[i]["_id"] )){
                                question.add(ProjectVariable.question[i]);
                              }
                            }
                          }
                          else{
                            for(int i =0;i<ProjectVariable.question.length;i++){
                              if(ProjectVariable.question[i]["sign"]==true){
                                question.add(ProjectVariable.question[i]);
                              }
                            }
                          }
                          if(question.length>0){
                            pageController.animateToPage(_index=0 ,curve: Curves.bounceInOut, duration: Duration(milliseconds: 50),);
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
                child:PageView.builder(
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
                                            isURL(question[i]["question"])==false  ?
                                            Text("Q-${i+1} : ${question[i]["question"]}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)
                                            :Row(
                                              children: [
                                                Text("Q-${i+1} : ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                                Expanded(child: Container(alignment: AlignmentDirectional.center,child: Image.network(question[i]["question"]))),
                                              ],
                                            ),
                                            isURL(question[i]["answer"])==false  ?
                                            Container(margin:EdgeInsets.fromLTRB(0, 7, 0, 0),child: Text("Ans : ${question[i]["answer"]}",style: TextStyle(color: Colors.grey,fontSize: 16),))
                                            :Container(alignment: AlignmentDirectional.center,child: Row(
                                              children: [
                                                Text("Ans : ",style: TextStyle(color: Colors.grey,fontSize: 16),),
                                                Expanded(child: Container(alignment: AlignmentDirectional.center,child: Image.network(question[i]["answer"]))),
                                              ],
                                            )),
                                          ],
                                        )),
                                        Container(
                                            child: InkWell(
                                              onTap: (){
                                                if(bookmarks.contains(question[i]["_id"])){
                                                  MyDatabase().deleteDataFromBookmarksTable(question[i]["_id"]);
                                                }
                                                else{
                                                  MyDatabase().insertDataFromBookmarksTable(question[i]["_id"]);
                                                }
                                                setState(() {
                                                  MyDatabase().getDataFromBookmarksTable().then((value){
                                                    setState(() {
                                                      bookmarks=value;
                                                    });
                                                  });
                                                });
                                              },
                                              child: Icon(bookmarks.contains(question[i]["_id"])?Icons.bookmark:Icons.bookmark_border_sharp,color: ProjectVariable.headercolor,size: 30,)
                                            )
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                      ],
                    ),
                  );
                },
                  )

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