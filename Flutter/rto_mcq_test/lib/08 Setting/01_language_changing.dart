import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rto_mcq_test/00%20Home%20Page/01_main_home_page.dart';

class LanguageChanging extends StatefulWidget {
  const LanguageChanging({Key? key}) : super(key: key);

  @override
  State<LanguageChanging> createState() => _LanguageChangingState();
}

class _LanguageChangingState extends State<LanguageChanging> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Container(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              var locale=Locale('en','US');
              Get.updateLocale(locale);
              print("object");
              Navigator.of(context).pop(MaterialPageRoute(builder: (context){return MainHomePage();}));
            }, child: Text("English"),),
            ElevatedButton(onPressed: (){
              var locale=Locale('hi','IN');
              print("object");
              Get.updateLocale(locale);
              Navigator.of(context).pop(MaterialPageRoute(builder: (context){return MainHomePage();}));
            }, child: Text("hindi"),),
            ElevatedButton(onPressed: (){
              var locale=Locale('gu','IN');
              Get.updateLocale(locale);
              print("object");
              Navigator.of(context).pop(MaterialPageRoute(builder: (context){return MainHomePage();}));
            }, child: Text("Gujrati"),),
        ],),
      ],
    ),),));
  }
}
