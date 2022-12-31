import 'package:flutter/material.dart';

class Extra_05 extends StatefulWidget {
  @override
  State<Extra_05> createState() => _Extra_05State();
}

class _Extra_05State extends State<Extra_05> {
  Widget putImage(String path,int fl){
    return Expanded(child: Container(child: Image.asset(path,fit:BoxFit.fill),margin: EdgeInsets.all(4),),flex: fl,);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              putImage('assets/images/thar.jpg', 4),
              putImage('assets/images/thar.jpg', 2),
              putImage('assets/images/thar.jpg', 1),
            ],
          )),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          putImage('assets/images/thar.jpg', 1),
                          putImage('assets/images/thar.jpg', 2),
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          putImage('assets/images/thar.jpg', 2),
                          putImage('assets/images/thar.jpg', 1),
                        ],
                      )),
                    ],
                  ),
                  flex: 5,
                ),
                putImage('assets/images/thar.jpg', 1),
                putImage('assets/images/thar.jpg', 1),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
