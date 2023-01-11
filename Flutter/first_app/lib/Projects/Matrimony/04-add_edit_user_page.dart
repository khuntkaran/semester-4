import 'package:first_app/Projects/Matrimony/03-home_page.dart';
import 'package:flutter/material.dart';

class AddEditUserPage extends StatefulWidget {
    dynamic user;
    AddEditUserPage({super.key ,this.user});

  @override
  State<AddEditUserPage> createState() => _AddEditUserPageState();
}

class _AddEditUserPageState extends State<AddEditUserPage> {
  late TextEditingController _name,_age,_salary,_image ;
  @override
  void initState() {
    _name=TextEditingController() ;
    _age=TextEditingController() ;
    _salary=TextEditingController() ;
    _image=TextEditingController() ;
    _name.text=widget.user!=null?widget.user['name']:"";
    _age.text=widget.user!=null?widget.user['age']:"";
    _salary.text=widget.user!=null?widget.user['salary']:"";
    _image.text=widget.user!=null?widget.user['image']:"";

  }


  var formkey = GlobalKey<FormState>();

  Widget makeTextField(controller,labelText){
    return Container(
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.grey,),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(),
        ),
      ),
      margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text(widget.user!=null?'Edit User':"Add User"),backgroundColor: Color(0xD510446d),),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              makeTextField(_name, "User Name"),
              makeTextField(_age, "Age"),
              makeTextField(_salary, "Salary"),
              makeTextField(_image, "Image"),
              Container(
                color:Color(0xD510446d),
                child: TextButton(
                  child: Text(widget.user!=null?'Edit':"Add",style: TextStyle(color: Colors.white),),
                  onPressed: () {
                    if(formkey.currentState!.validate()){
                      Map<String,dynamic> user = {};
                      user['name']=_name.text;
                      user['age']=_age.text;
                      user['salary']=_salary.text;
                      user['image']=_image.text;
                      Navigator.of(context).pop(user);

                    }
                  },
                ),
                margin: EdgeInsets.fromLTRB(0, 30, 0, 20),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
