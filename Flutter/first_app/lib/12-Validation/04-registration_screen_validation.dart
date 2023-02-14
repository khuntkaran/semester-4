import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class RegistrationScreenValidation extends StatefulWidget {

@override
State<RegistrationScreenValidation> createState() => _RegistrationScreenValidationState();
}

class _RegistrationScreenValidationState extends State<RegistrationScreenValidation> {
  late TextEditingController _username,_email,_mobile,_password ;
  @override
  void initState() {
    _username=TextEditingController();
    _email=TextEditingController();
    _mobile=TextEditingController();
    _password=TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    var formkey = GlobalKey<FormState>();
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("Registration"),backgroundColor: Color(0xD510446d),),
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
                  controller: _email,
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey,),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                  ),
                  validator: (value){
                    if(value != null && value.isEmpty){
                      return "Enter Email";
                    }
                    else if(!EmailValidator.validate(value!)){
                      return "Invalid Email";
                    }
                  },
                ),
                margin: EdgeInsets.fromLTRB(10, 20, 10, 5),
              ),
              Container(
                child: TextFormField(
                  controller: _mobile,
                  keyboardType: TextInputType.number,
                  maxLength: 10,
                  decoration: InputDecoration(
                    hintText: "Mobile No",
                    hintStyle: TextStyle(color: Colors.grey,),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                  ),
                  validator: (value){
                    if(value != null && value.isEmpty){
                      return "Enter Mobile No";
                    }
                    else if(value?.length != 10){
                      return "Invalid Mobile No";
                    }
                  },
                ),
                margin: EdgeInsets.fromLTRB(10, 20, 10, 5),
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
                    else if(!RegExp(r"\d").hasMatch(value!)){
                      return "Invalid Password";
                    }
                  },
                ),
                margin: EdgeInsets.fromLTRB(10, 20, 10, 30),
              ),
              Container(
                color:Color(0xD510446d),
                child: TextButton(
                  child: Text("Registration",style: TextStyle(color: Colors.white),),
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
