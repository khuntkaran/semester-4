import 'package:first_app/12-Validation/01-login_screen.dart';
import 'package:first_app/12-Validation/02-login_screen_validation.dart';
import 'package:first_app/12-Validation/03-registration_screen.dart';
import 'package:first_app/12-Validation/04-registration_screen_validation.dart';
import 'package:first_app/12-Validation/05-password_visibil_icon.dart';
import 'package:first_app/Navigate/navigate_main.dart';
import 'package:flutter/material.dart';

class TwelveNavigate extends StatefulWidget {
  const TwelveNavigate({Key? key}) : super(key: key);

  @override
  State<TwelveNavigate> createState() => _TwelveNavigateState();
}

class _TwelveNavigateState extends State<TwelveNavigate> {
  @override
  Widget build(BuildContext context) {
    myCard card=myCard(context);
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("12-Validation"),backgroundColor: Colors.cyan,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            card.makeCard(LoginScreen(), "01-login-screen"),
            card.makeCard(LoginScreenValidation(), "02-login_screen_validation"),
            card.makeCard(RegistrationScreen(), "03-registration_screen"),
            card.makeCard(RegistrationScreenValidation(), "04-registration_screen_validation"),
            card.makeCard(PasswordVisibilIcon(), "05-password_visibil_icon"),
          ],
        ),
      ),
    ));
  }
}