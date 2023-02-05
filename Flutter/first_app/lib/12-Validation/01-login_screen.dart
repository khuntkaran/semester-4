import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

@override
State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
@override
Widget build(BuildContext context) {
  var formkey = GlobalKey<FormState>();
  return SafeArea(child: Scaffold(
    appBar: AppBar(title: Text("Login"),backgroundColor: Color(0xD510446d),),
    body: SingleChildScrollView(
      child: Form(
        key: formkey,
        child: Column(
          children: [
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "User Name",
                  hintStyle: TextStyle(color: Colors.grey,),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
              margin: EdgeInsets.fromLTRB(10, 100, 10, 5),
            ),
            Container(
              child: TextFormField(
                obscureText: true,
                obscuringCharacter: '\k',
                decoration: InputDecoration(
                  hintText: "password",
                  hintStyle: TextStyle(color: Colors.grey,),
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
              margin: EdgeInsets.fromLTRB(10, 20, 10, 30),
            ),
            Container(
              color:Color(0xD510446d),
              child: TextButton(
                child: Text("Login",style: TextStyle(color: Colors.white),),
                onPressed: () {
                    Navigator.of(context).pop();
                },
              ),
            )
          ],
        ),
      ),
    ),
  ));
}
}
