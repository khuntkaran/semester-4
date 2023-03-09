import 'package:api/02_add_edit_page.dart';
import 'package:api/api.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<dynamic >  student=[];

  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData(){
    MYAPI().getDataFromUsersAPI().then((value) {setState((){student=value;});});
  }

  void insertData(){
    Navigator.of(context).push(MaterialPageRoute(builder: (context){return AddEditPage();})).then((value){
      MYAPI().insertDataFromUserAPI(value).then((value) => getData());
    });
  }

  void updateData(Map<String,dynamic> studentdata){
    Navigator.of(context).push(MaterialPageRoute(builder: (context){return AddEditPage(student:studentdata);})).then((value){
      MYAPI().updateDataFromUsersAPI(value, int.parse(studentdata["id"])).then((value) => getData());
    });
  }

  void deleteData(int rollno){
    MYAPI().deleteDataFromUserAPI(rollno).then((value) => getData());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text("API"),
        actions:[
          Container(
            margin: EdgeInsets.only(right: 15),
              child: InkWell(
                onTap: (){insertData();},
                child: Icon(Icons.add)
              )
          ),
        ]
      ),
      body: ListView.builder(
        itemBuilder: (context,index){
          return Container(
            color: Colors.grey,
            margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Row(
              children: [
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Name : ${student[index]["name"]}"),
                    Text("Roll No : ${student[index]["id"]}"),
                    Text("Age : ${student[index]["age"]}"),
                    Text("Std : ${student[index]["std"]}"),
                  ],
                )),
                Container(
                  margin: EdgeInsets.only(right: 15),
                    child: InkWell(
                      onTap: (){updateData(student[index]);},
                      child: Icon(Icons.edit)
                    )
                ),
                Container(
                    margin: EdgeInsets.only(right: 15),
                    child: InkWell(
                      onTap: (){deleteData(int.parse(student[index]['id']));},
                      child: Icon(Icons.delete)
                    )
                )
              ],
            ),
          );
        },
        itemCount: student.length,
      )
    ));
  }
}