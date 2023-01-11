import 'package:first_app/Projects/Matrimony/04-add_edit_user_page.dart';
import 'package:flutter/material.dart';

class UserDetailPage extends StatefulWidget {
  dynamic user ;

  UserDetailPage({super.key, this.user });


  State<UserDetailPage> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("User Detail"),backgroundColor: Color(0xD510446d),),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    child: Card(
                      elevation: 20,
                      child: Container(
                        child: Column(
                          children: [
                            Container(child: CircleAvatar(radius: 65,backgroundColor: Color(0xD510446d),child: CircleAvatar(backgroundImage: NetworkImage(widget.user["image"]), radius: 60,)),margin: EdgeInsets.all(20)),
                            DataTable(
                              columns: [
                                DataColumn(label: Text('Field',style: TextStyle(fontSize: 25,fontFamily: 'EastSeaDokdo', fontWeight: FontWeight.bold))),
                                DataColumn(label: Text('Data',style: TextStyle(fontSize: 25, fontFamily: 'EastSeaDokdo', fontWeight: FontWeight.bold))),
                              ],
                              rows: [
                                DataRow(cells: [
                                  DataCell(Text("Name",style: TextStyle(fontSize: 20,fontFamily: 'EastSeaDokdo', fontWeight: FontWeight.bold))),
                                  DataCell(Text(widget.user["name"],style: TextStyle(fontSize: 18,fontFamily: 'EastSeaDokdo')))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("Age",style: TextStyle(fontSize: 20,fontFamily: 'EastSeaDokdo', fontWeight: FontWeight.bold))),
                                  DataCell(Text(widget.user["age"],style: TextStyle(fontSize: 18,fontFamily: 'EastSeaDokdo')))
                                ]),
                                DataRow(cells: [
                                  DataCell(Text("Salary",style: TextStyle(fontSize: 20,fontFamily: 'EastSeaDokdo', fontWeight: FontWeight.bold))),
                                  DataCell(Text(widget.user["salary"],style: TextStyle(fontSize: 18,fontFamily: 'EastSeaDokdo')))
                                ])
                              ],
                            ),
                            Container(
                              child: TextButton(
                                onPressed: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                    return AddEditUserPage(user: widget.user,);})).then((value){
                                    setState(() {
                                      widget.user=(value);
                                      Navigator.of(context).pop(widget.user);
                                    });
                                  });
                                },
                                child: Container(
                                    margin: EdgeInsets.only(top: 10),
                                    padding:EdgeInsets.all(18),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xD510446d),
                                    ),
                                    child: Text("Edit",style: TextStyle(color: Colors.white ,fontSize: 15 ),)),),
                              ),
                          ],
                        ),
                        margin: EdgeInsets.all(5),),
                    ),
                    margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
