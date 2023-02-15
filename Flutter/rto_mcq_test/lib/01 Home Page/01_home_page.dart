import 'package:flutter/material.dart';
import 'package:rto_mcq_test/01%20Home%20Page/home_page_card.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomePageCard hpc= new HomePageCard();
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        elevation:0,
        titleSpacing: 0,
        leading: Container( padding: EdgeInsets.fromLTRB(5, 2, 0, 2), child: CircleAvatar(radius: 23,backgroundColor: Color(0x94A8A8A8),child: CircleAvatar(backgroundImage: NetworkImage("https://wallpaperaccess.com/full/1311997.jpg"), radius: 20,))),
        actions: [
          Container(child: CircleAvatar(radius: 23,backgroundColor: Color(0x94A8A8A8),child: Icon(Icons.settings,color: Colors.white,))),
          Container(margin:EdgeInsets.only(right: 5),child: CircleAvatar(radius: 23,backgroundColor: Color(0x94A8A8A8),child: Icon(Icons.share,color: Colors.white,))),
        ],
        title:  Container(
          margin: EdgeInsets.fromLTRB(0, 5, 0, 4),
          child: TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                filled: true,
                fillColor:Color(0x94A8A8A8),
                hintText: " Search Something",
                hintStyle: TextStyle(color: Colors.grey,fontSize: 13,fontFamily: 'Inter'),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Color(0x94A8A8A8),),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Color(0x94A8A8A8),),
                  borderRadius: BorderRadius.circular(50.0),
                )
            ),
          ),
        ),
        backgroundColor: Color(0xE72C2C2D),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            hpc.CardMaker(Color(0xD510446d),"Question Bank","List of questions & answers and meaning of road signs"),
            hpc.CardMaker(Color(0xd58a1aaf),"Practice","Test your knowledge without worrying about time"),
            hpc.CardMaker(Color(0xd5536d10),"Exam","Time and question bound test exactly same as actual RTO test"),
            hpc.CardMaker(Color(0xd56d1026),"Question Bank","List of questions & answers and meaning of road signs"),
            hpc.CardMaker(Color(0xd56d6510),"Setting & Help","Language selection"),
          ],
        ),
      ),
      backgroundColor: Color(0xE72C2C2D),
    ));
  }
}