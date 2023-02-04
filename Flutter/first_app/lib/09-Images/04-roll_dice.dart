import 'dart:math';

import 'package:flutter/material.dart';

class RollDice extends StatefulWidget {
  const RollDice({Key? key}) : super(key: key);

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {

  int i=1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(child: InkWell(
          onTap:(){
            setState(() {
              i=Random().nextInt(6)+1;
            });
          },
          child: Image(image: AssetImage("assets/images/d$i.png"))
      )),
    ));
  }
}
