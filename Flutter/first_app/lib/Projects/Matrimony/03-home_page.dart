import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("Home Page"),backgroundColor: Color(0xD510446d),),
      body: Column(
        children: [
      Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            elevation: 20,
            child: Column(
              children: [
                Container(child: CircleAvatar(radius: 65,backgroundColor: Color(0xD510446d),child: CircleAvatar(backgroundImage: AssetImage('assets/images/android.jpg'), radius: 60,)),margin: EdgeInsets.all(20)),
                Container(child: Text("displayName",),margin: EdgeInsets.all(20),),
              ],
            ),
          ),
        ],
      ),
      margin: EdgeInsets.all(10),
    )
        ],
      ),
    ));
  }
}
