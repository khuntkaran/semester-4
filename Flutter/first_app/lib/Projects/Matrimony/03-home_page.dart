import 'package:first_app/Projects/Matrimony/04-add_edit_user_page.dart';
import 'package:first_app/Projects/Matrimony/05-user_detail_page.dart';
import 'package:first_app/Projects/Matrimony/06-my_database.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Map<String,dynamic> > users=[
    {"name":"Android","age":'20',"salary":'500000',"image":'https://wallpaperaccess.com/full/1311997.jpg'},
    {"name":"IOS","age":'18',"salary":'550000',"image":"https://www.nicepng.com/png/full/114-1140177_ios-logo-icon-free-os-x-icon-pack.png"},
    {"name":"Windos","age":'25',"salary":'650000',"image":"https://wallpapercave.com/wp/eHlGQW3.jpg"},
  ];
  List<Map<String,dynamic> > databaseusers=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     MyDatabase().copyPasteAssetFileToRoot().then((value){
       print("successfull");
       MyDatabase().getDataFromUsersTable().then((value){
         setState(() {
           databaseusers=value;
         });
       });
     });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(title: Text("Home Page"),backgroundColor: Color(0xD510446d),
        actions: [
          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return AddEditUserPage();
              })).then((value){
                setState(() {
                  users.add(value);
                });
              });
            },
              child: Container(child: Icon((Icons.add)),margin: EdgeInsets.only(right: 10),)
          )
        ],
      ),
      body: users.length>0
        ?SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                margin: EdgeInsets.fromLTRB(20,10,20,10),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      return Container(
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return UserDetailPage(user:users[index]);})).then((value){
                              setState(() {
                                users[index]=value;
                              });
                            });
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)),
                            color: Colors.white,
                            elevation: 20,
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(child: CircleAvatar(radius: 23,backgroundColor: Color(0xD510446d),child: CircleAvatar(backgroundImage: NetworkImage(users[index]["image"]), radius: 20,)),margin: EdgeInsets.fromLTRB(0, 0, 5, 0)),
                                      Expanded(child: Container(child: Text(users[index]["name"],style: TextStyle(fontSize: 25,fontFamily: 'EastSeaDokdo',color: Color(0xD510446d))))),
                                      Expanded(
                                        child: Container(child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            TextButton(
                                              onPressed: (){
                                                setState(() {
                                                  users.removeAt(index);
                                                });
                                              },
                                              child: Container(
                                                padding:EdgeInsets.all(8),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    color: Color(0xD510446d),
                                                ),
                                                child: Text("Delete",style: TextStyle(color: Colors.white , ),)),),
                                          ],
                                        ),
                                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              margin: EdgeInsets.fromLTRB(15,10,0,10),),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                      );
                    },
                    itemCount: users.length,

                ),
       ),
                Container(child: Text("DataBase",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),),
                Container(
                  padding: EdgeInsets.all(10),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context,index){
                      return Container(
                        child: InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                              return UserDetailPage(user:databaseusers[index]);})).then((value){
                              setState(() {
                                databaseusers[index]=value;
                              });
                            });
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)),
                            color: Colors.white,
                            elevation: 20,
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(child: CircleAvatar(radius: 23,backgroundColor: Color(0xD510446d),child: CircleAvatar(backgroundImage: NetworkImage(databaseusers[index]["image"]), radius: 20,)),margin: EdgeInsets.fromLTRB(0, 0, 5, 0)),
                                      Expanded(child: Container(child: Text(databaseusers[index]["name"],style: TextStyle(fontSize: 25,fontFamily: 'EastSeaDokdo',color: Color(0xD510446d))))),
                                      Expanded(
                                        child: Container(child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            TextButton(
                                              onPressed: (){
                                                setState(() {
                                                  databaseusers.removeAt(index);
                                                });
                                              },
                                              child: Container(
                                                  padding:EdgeInsets.all(8),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(10),
                                                    color: Color(0xD510446d),
                                                  ),
                                                  child: Text("Delete",style: TextStyle(color: Colors.white , ),)),),
                                          ],
                                        ),
                                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              margin: EdgeInsets.fromLTRB(15,10,0,10),),
                          ),
                        ),
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      );
                    },
                    itemCount: databaseusers.length,

                  ),
                ),

              ],
            ),
          ),
        )
        :Center(child: Text('No Data Found',style: TextStyle(fontSize: 20,color: Color(0xD510446d)),)),
      floatingActionButton : FloatingActionButton(
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context){
            return AddEditUserPage();
          })).then((value){
            setState(() {
              users.add(value);
            });
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xD510446d),
          ),
          child: CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xD510446d),
              child:  Container(child: Icon(Icons.add,color: Colors.white,))
          ),
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    ));
  }
}