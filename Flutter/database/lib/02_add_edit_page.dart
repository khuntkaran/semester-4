import 'package:database/database.dart';
import 'package:flutter/material.dart';

class AddEditPage extends StatefulWidget {
  dynamic student;
  AddEditPage({super.key ,this.student});

  @override
  State<AddEditPage> createState() => _AddEditPageState();
}

class _AddEditPageState extends State<AddEditPage> {

  late TextEditingController _name,_age,_std;
  late int _cid;
  late String dropdownvalue;
  List<Map<String,dynamic> > items=[];

  @override
  void initState() {
    _name=TextEditingController() ;
    _age=TextEditingController() ;
    _std=TextEditingController() ;
    _name.text=widget.student!=null?widget.student['name']:"";
    _age.text=widget.student!=null?widget.student['age'].toString():"";
    _std.text=widget.student!=null?widget.student['std'].toString():"";
    _cid=widget.student!=null?widget.student['cid']:1;
    MyDatabase().copyPasteAssetFileToRoot().then((value){
      MyDatabase().getDataFromCityTable().then((value){
        setState((){
          items=value;
          dropdownvalue=items[_cid-1]["name"];
        });
      });
    });
    dropdownvalue="";
  }

  Widget makeTextField(controller,labelText,keyboard){
    return Container(
      child: TextFormField(
        controller: controller,
        keyboardType: keyboard,
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

    var formkey=GlobalKey<FormState>();

    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text(widget.student!=null?'Edit Student':"Add Student"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child:Form(
            key: formkey,
            child: Column(
              children: [
                makeTextField(_name, "Name",TextInputType.text),
                makeTextField(_age, "Age",TextInputType.number),
                makeTextField(_std, "Std",TextInputType.number),
                DropdownButton(
                  value: dropdownvalue,
                  icon: Icon(Icons.keyboard_arrow_down),
                  items: items.map((Map<String,dynamic> items) {
                    return DropdownMenuItem(
                      value: items["name"],
                      child: Text(items["name"],),
                    );
                  }).toList(),
                  onChanged: (dynamic newValue) {
                    setState(() {
                      dropdownvalue=newValue;
                      for(int i=0;i<items.length;i++){
                        if(items[i]["name"]==newValue){
                          _cid=items[i]["id"];
                        }
                      }
                    });
                  },
                ),
                Container(
                  color:Colors.blue,
                  child: TextButton(
                    child: Text(widget.student!=null?'Edit':"Add",style: TextStyle(color: Colors.white),),
                    onPressed: () {
                      if(formkey.currentState!.validate()){
                        Map<String,dynamic> student = {};
                        student['name']=_name.text;
                        student['age']=_age.text;
                        student['std']=_std.text;
                        student['cid']=_cid;
                        Navigator.of(context).pop(student);
                      }
                    },
                  ),
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 20),
                )
              ],
            ),
          )
        ),
      ),
    ));
  }
}