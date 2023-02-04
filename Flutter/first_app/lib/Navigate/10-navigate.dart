import 'package:first_app/10-Navigation/01-1-material_navigation_one.dart';
import 'package:first_app/10-Navigation/02-1-name_navigation_one.dart';
import 'package:first_app/10-Navigation/03-1-bottom_navigationbar_one.dart';
import 'package:first_app/10-Navigation/04-birthday_card.dart';
import 'package:first_app/Navigate/navigate_main.dart';
import 'package:flutter/material.dart';

class TenNavigate extends StatefulWidget {
  const TenNavigate({Key? key}) : super(key: key);

  @override
  State<TenNavigate> createState() => _TenNavigateState();
}

class _TenNavigateState extends State<TenNavigate> {
  @override
  Widget build(BuildContext context) {
    myCard card=myCard(context);
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("10-Navigation"),backgroundColor: Colors.cyan,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            card.makeCard(MaterialNavigationOne(), "01-material_navigation"),
            card.makeCard(NameRouteNavigationOne(), "02-name_route_navigation"),
            card.makeCard(BottomNavigationbarOne(), "03-bottom_avigationbar"),
            card.makeCard(BirthdayCard(), "04-birthday_card"),
          ],
        ),
      ),
    ));
  }
}
