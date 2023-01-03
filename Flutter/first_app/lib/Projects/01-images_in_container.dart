import 'package:flutter/material.dart';

class ImagesInContainer extends StatefulWidget {
  @override
  State<ImagesInContainer> createState() => _ImagesInContainerState();
}

class _ImagesInContainerState extends State<ImagesInContainer> {
  Widget putImage(String path,int fl,Color co){
    return Expanded(child: Container(child: Image.asset(path,fit:BoxFit.fill),color:co,margin: EdgeInsets.all(4),padding: EdgeInsets.all(2),),flex: fl,);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              putImage('assets/images/thar.jpg', 4,Colors.greenAccent),
              putImage('assets/images/thar.jpg', 2,Colors.redAccent),
              putImage('assets/images/thar.jpg', 1,Colors.pinkAccent),
            ],
          )),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          putImage('assets/images/thar.jpg', 1,Colors.purple),
                          putImage('assets/images/thar.jpg', 2,Colors.amber),
                        ],
                      )),
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          putImage('assets/images/thar.jpg', 2,Colors.cyanAccent),
                          putImage('assets/images/thar.jpg', 1,Colors.black12),
                        ],
                      )),
                    ],
                  ),
                  flex: 5,
                ),
                putImage('assets/images/thar.jpg', 1,Colors.orange),
                putImage('assets/images/thar.jpg', 1,Colors.pink),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
