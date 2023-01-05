import 'package:first_app/Projects/Matrimony/02-login_page.dart';
import 'package:flutter/material.dart';

class PreLoginPage extends StatefulWidget {
  const PreLoginPage({Key? key}) : super(key: key);

  @override
  State<PreLoginPage> createState() => _PreLoginPageState();
}

class _PreLoginPageState extends State<PreLoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset('assets/images/couple.jpg',fit: BoxFit.fill,),
                Container(color: Color(0x7410446d),),
                Center(child: Text(
                    'INDIA\'s\nMost TRUSTED\nMATRIMONY BRAND',
                    style: TextStyle(fontSize: 25,color: Colors.white,fontFamily: 'EastSeaDokdo'),
                    textAlign: TextAlign.center,
                  )
                )
              ],
            ),
          ),
          Row(
            children: [
              Expanded(child:Container(
                  color:Color(0xD510446d),
                  child: TextButton(
                      onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) {return LoginPage();}),);},
                      child: Text('Login',style: TextStyle(color:Colors.white),)
                  )
              )),
              Expanded(child: Container(color:Colors.white,child: TextButton(onPressed: (){}, child: Text('Sign-UP',style: TextStyle(color: Color(0xD510446d)),)))),
            ],
          )
        ],
      ),
    ));
  }
}
