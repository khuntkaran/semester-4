import 'package:first_app/09-Images/01-image_asset_web.dart';
import 'package:first_app/09-Images/02-stack_image.dart';
import 'package:first_app/09-Images/03-birthday_card.dart';
import 'package:first_app/09-Images/04-roll_dice.dart';
import 'package:first_app/09-Images/05-splash_screen.dart';
import 'package:first_app/Navigate/navigate_main.dart';
import 'package:flutter/material.dart';

class NineNavigate extends StatefulWidget {
  const NineNavigate({Key? key}) : super(key: key);

  @override
  State<NineNavigate> createState() => _NineNavigateState();
}

class _NineNavigateState extends State<NineNavigate> {
  @override
  Widget build(BuildContext context) {
    myCard card=myCard(context);
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("09-Images"),backgroundColor: Colors.cyan,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            card.makeCard(ImageAssetWeb(), "01-image_asset_web"),
            card.makeCard(StackImage(), "02-stack_image"),
            card.makeCard(BirthdayCard(), "03-birthday_card"),
            card.makeCard(RollDice(), "04-roll_dice"),
            card.makeCard(SplashScreen(), "05-splash_screen"),
          ],
        ),
      ),
    ));;
  }
}
