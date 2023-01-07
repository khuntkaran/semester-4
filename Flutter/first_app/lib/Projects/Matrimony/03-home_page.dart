import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Map<String,dynamic> > users=[
    {"name":"Android","age":20,"salary":500000},
    {"name":"IOS","age":18,"salary":550000},
    {"name":"Windos","age":25,"salary":650000},
  ];


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("Home Page"),backgroundColor: Color(0xD510446d),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ListView.builder(
                      itemBuilder: (context,index){
                        return Card(
                          elevation: 20,
                          child: Container(
                            child: Column(
                              children: [
                                Container(child: CircleAvatar(radius: 65,backgroundColor: Color(0xD510446d),child: CircleAvatar(backgroundImage: AssetImage('assets/images/android.jpg'), radius: 60,)),margin: EdgeInsets.all(20)),
                                DataTable(
                                  columns: [
                                    DataColumn(label: Text('Field',style: TextStyle(fontSize: 25,fontFamily: 'EastSeaDokdo', fontWeight: FontWeight.bold))),
                                    DataColumn(label: Text('Data',style: TextStyle(fontSize: 25, fontFamily: 'EastSeaDokdo', fontWeight: FontWeight.bold))),
                                  ],
                                  rows: [
                                    DataRow(cells: [
                                      DataCell(Text("Name",style: TextStyle(fontSize: 20,fontFamily: 'EastSeaDokdo', fontWeight: FontWeight.bold))),
                                      DataCell(Text(users[index]["name"],style: TextStyle(fontSize: 18,fontFamily: 'EastSeaDokdo')))
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text("Age",style: TextStyle(fontSize: 20,fontFamily: 'EastSeaDokdo', fontWeight: FontWeight.bold))),
                                      DataCell(Text(users[index]["age"].toString(),style: TextStyle(fontSize: 18,fontFamily: 'EastSeaDokdo')))
                                    ]),
                                    DataRow(cells: [
                                      DataCell(Text("Salary",style: TextStyle(fontSize: 20,fontFamily: 'EastSeaDokdo', fontWeight: FontWeight.bold))),
                                      DataCell(Text(users[index]["salary"].toString(),style: TextStyle(fontSize: 18,fontFamily: 'EastSeaDokdo')))
                                    ])
                                  ],
                                )
                              ],
                            ),
                            margin: EdgeInsets.all(20),),
                        );
                      },
                      itemCount: users.length,
                  ),
                ],
              ),
              margin: EdgeInsets.all(10),
            )
          ],
        ),
      ),
    ));
  }
}





// DataTable(
// columns: [
// DataColumn(label: Text('Name',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
// DataColumn(label: Text('Profession',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))),
// ],
// rows: [
// DataRow(cells: [
// DataCell(Text('Stephen')),
// DataCell(Text('Actor')),
// ]),
// DataRow(cells: [
// DataCell(Text('John')),
// DataCell(Text('Student')),
// ]),
// ],
// ),