import 'package:flutter/material.dart';

class StackImage extends StatefulWidget {
  const StackImage({Key? key}) : super(key: key);

  @override
  State<StackImage> createState() => _StackImageState();
}

class _StackImageState extends State<StackImage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
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
          ]
        ),
      ),
    );
  }
}
