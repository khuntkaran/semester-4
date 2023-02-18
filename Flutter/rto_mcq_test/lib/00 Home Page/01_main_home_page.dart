import 'package:flutter/material.dart';
import 'package:rto_mcq_test/00%20Home%20Page/02_home_page_card.dart';
import 'package:rto_mcq_test/01%20Question%20Bank/01_main_question_bank_page.dart';
import 'package:rto_mcq_test/02%20Practice/01_main_practice_page.dart';
import 'package:rto_mcq_test/03%20Exam/01_main_exam_page.dart';
import 'package:rto_mcq_test/04%20License%20Procedure/01_main_license_procedure_page.dart';
import 'package:rto_mcq_test/05%20Driving%20Laws/01_main_driving_page.dart';
import 'package:rto_mcq_test/06%20RTO%20Codes/01_main_rto_codes_page.dart';
import 'package:rto_mcq_test/07%20Statistics/01_main_statistics_page.dart';
import 'package:rto_mcq_test/08%20Setting/01_main_setting_page.dart';
import 'package:rto_mcq_test/variable.dart';
class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  Variable ProjectVariable = Variable();
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
          margin: EdgeInsets.fromLTRB(10, 5, 0, 4),
          child: Text("RTO Exam",style:TextStyle(color:Colors.white,)),
        ),
        backgroundColor: ProjectVariable.headercolor,
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            hpc.CardMaker(Color(0xD510446d),Icons.local_activity,"Question Bank","List of questions & answers and meaning of road signs",context,MainQuestionBankPage()),
            hpc.CardMaker(Color(0xd58a1aaf),Icons.favorite_border,"Practice","Test your knowledge without worrying about time",context,MainPracticePage()),
            hpc.CardMaker(Color(0xd5536d10),Icons.list,"Exam","Time and question bound test exactly same as actual RTO test",context,MainExamPage()),
            hpc.CardMaker(Color(0xd56d1026),Icons.local_activity,"License Procedure","Find the complete process on how to apply for License",context,MainLicenseProcedurePage()),
            hpc.CardMaker(Color(0xd5276d10),Icons.local_activity,"Driving Laws","Access a complete list of various driving laws and their penalties",context,MainDrivingLawsPage()),
            hpc.CardMaker(Color(0xd5273a85),Icons.local_activity,"RTO Codes","You can search for RTO codes across various states and cities of India",context,MainRTOCodesPage()),
            hpc.CardMaker(Color(0xd567106d),Icons.local_activity,"Statistics","Driving Licence, Vehicle Population, Road Accidents",context,MainStatisticsPage()),
            hpc.CardMaker(Color(0xd56d6510),Icons.local_activity,"Setting & Help","Language selection",context,MainSettingPage()),
          ],
        ),
      ),
      // backgroundColor: Color(0xE72C2C2D),
    ));
  }
}