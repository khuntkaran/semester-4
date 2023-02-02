import 'package:first_app/Projects/UI-Design/02-home_page.dart';
import 'package:flutter/material.dart';

class StartedPage extends StatefulWidget {
  const StartedPage({Key? key}) : super(key: key);

  @override
  State<StartedPage> createState() => _StartedPageState();
}

class _StartedPageState extends State<StartedPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset('assets/images/photo.avif',fit: BoxFit.fill,),
                Container(color: Color(0x740f1011),),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child:Container(
                            margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text(
                              'THE SECRET\nOF YOUR\nHAPPINESS',
                              style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child:Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
                            child: Text(
                              'get your enjoy quickly and easily',
                              style: TextStyle(fontSize: 14,color: Colors.grey,),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                        children: [
                          Expanded(
                              child:Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: new Border.all(color: Colors.white, width: 2.0),
                                  borderRadius: new BorderRadius.circular(30.0),
                                ),
                                margin: EdgeInsets.fromLTRB(10, 40, 10, 20),
                                child: TextButton(
                                    onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) {return HomePage();}),);},
                                    child: Container(margin:EdgeInsets.all(10),child: Text('GET STARTED',style: TextStyle(color:Colors.black,),)),
                                  ),
                              ),
                          ),
                        ],
                      ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    ));
  }
}
