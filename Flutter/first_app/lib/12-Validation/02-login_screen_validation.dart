import 'package:flutter/material.dart';

class LoginScreenValidation extends StatefulWidget {

@override
State<LoginScreenValidation> createState() => _LoginScreenValidationState();
}

class _LoginScreenValidationState extends State<LoginScreenValidation> {
  late TextEditingController _username,_password ;
  @override
  void initState() {
    _username=TextEditingController();
    _password=TextEditingController();
  }
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
                  controller: _username,
                  decoration: InputDecoration(
                    hintText: "User Name",
                    hintStyle: TextStyle(color: Colors.grey,),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                  ),
                  validator: (value){
                    if(value != null && value.isEmpty){
                      return "Enter UserName";
                    }
                    else if(value!="karan"){
                      return "Invalid UserName";
                    }
                  },
                ),
                margin: EdgeInsets.fromLTRB(10, 100, 10, 5),
              ),
              Container(
                child: TextFormField(
                  controller: _password,
                  obscureText: true,
                  obscuringCharacter: '\k',
                  decoration: InputDecoration(
                    hintText: "password",
                    hintStyle: TextStyle(color: Colors.grey,),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                  ),
                  validator: (value){
                    if(value != null && value.isEmpty){
                      return "Enter Password";
                    }
                    else if(value!="karan"){
                      return "Invalid Password";
                    }
                  },
                ),
                margin: EdgeInsets.fromLTRB(10, 20, 10, 30),
              ),
              Container(
                color:Color(0xD510446d),
                child: TextButton(
                  child: Text("Login",style: TextStyle(color: Colors.white),),
                  onPressed: () {
                    if(formkey.currentState!.validate()){
                      Navigator.of(context).pop();
                    }
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
