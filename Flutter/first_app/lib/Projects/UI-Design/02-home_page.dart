import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:first_app/Projects/UI-Design/03-detail_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selecteditem=0;


  Widget menubarText(String data){
    return Container(
        child: Text(data,style: TextStyle(color: data=="Music"?Colors.white:Colors.grey,),),
      margin: EdgeInsets.fromLTRB(3, 2, 15, 2),
    );
  }

  Widget cardbuild(m){
    return Align(
      alignment: AlignmentDirectional.topCenter,
      child: Container(
        margin: EdgeInsets.fromLTRB(5, m,5,0),
        child: Card(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)),
          color: Colors.white,
          elevation: 10,
          child: Container(
            margin: EdgeInsets.only(top: m),
            padding: EdgeInsets.fromLTRB(10, 7, 10, 5),
            child: Column(
              children: [
                Stack(
                  children: [
                    Text("(G)I-DLE 'Nxde Music\nVideo behind sence" ,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 17),),
                    Align(
                        alignment: AlignmentDirectional.topEnd,
                        child: CircleAvatar(radius: 23,backgroundColor: Color(0x94A8A8A8),child: Icon(Icons.favorite,color: Colors.white,))),
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Stack(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset('assets/images/music.jpg',fit: BoxFit.cover,height: 100,width: 700,)
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Row(
                      children: [
                        Text("(G)I-DLE Official" ,style: TextStyle(fontWeight: FontWeight.bold,),),
                        Icon(Icons.verified,color: Colors.blue,size: 15,)
                      ],
                    ),
                    Align(
                        alignment: AlignmentDirectional.topEnd,
                        child:Text("1.3M Views • 2 Weeks Ago",style: TextStyle(fontSize: 10),)
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 3),
                  child: Text(
                      "See how (G)I-DLE was behind the scenes of making the music video for 'NXDE' and see what the members thought of their new song and ...",
                      style: TextStyle(color: Colors.grey,fontSize: 10),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child:Container(
                        decoration: BoxDecoration(
                          color: Color(0xE72C2C2D),
                          border: new Border.all(color: Color(0xE72C2C2D), width: 2.0),
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 5),
                        child: TextButton(
                          onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) {return DetailPage();}),);},
                          child: Container(margin:EdgeInsets.all(5),child: Text('WATCH NOW',style: TextStyle(color:Colors.white,fontWeight: FontWeight.w800,fontSize: 18),)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
          elevation:0,
          titleSpacing: 0,
          leading: Container( padding: EdgeInsets.fromLTRB(5, 2, 0, 2), child: CircleAvatar(radius: 23,backgroundColor: Color(0x94A8A8A8),child: CircleAvatar(backgroundImage: NetworkImage("https://wallpaperaccess.com/full/1311997.jpg"), radius: 20,))),
          actions: [
            Container(child: CircleAvatar(radius: 23,backgroundColor: Color(0x94A8A8A8),child: Icon(Icons.search,color: Colors.white,))),
            Container(margin:EdgeInsets.only(right: 5),child: CircleAvatar(radius: 23,backgroundColor: Color(0x94A8A8A8),child: Icon(Icons.menu,color: Colors.white,))),
          ],
          title:  Container(
            margin: EdgeInsets.fromLTRB(0, 5, 0, 4),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                filled: true,
                fillColor:Color(0x94A8A8A8),
                hintText: " Search Something",
                hintStyle: TextStyle(color: Colors.grey,fontSize: 13),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color:Color(0x94A8A8A8),),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(color:Color(0x94A8A8A8),),
                  borderRadius: BorderRadius.circular(50.0),
                )
              ),
            ),
          ),
          backgroundColor: Color(0xE72C2C2D),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child:Container(
                          margin: EdgeInsets.fromLTRB(10, 20, 0, 10),
                          child: Text(
                            'Welcome back !',
                            style: TextStyle(fontSize: 14,color: Colors.grey,),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child:Container(
                          margin: EdgeInsets.fromLTRB(10, 0, 0, 10),
                          child: Text(
                            'QUICK SEARCH\nENJOY FAST',
                            style: TextStyle(fontSize: 30,color: Colors.white,fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    menubarText("Popular"),
                    menubarText("Music"),
                    menubarText("Sport"),
                    menubarText("Gaming"),
                    menubarText("Live"),
                    menubarText("Conset"),
                    menubarText("Video")
                  ],

                ),
              ),
            ),
            Stack(
              children: [
                cardbuild(20.0 ),
                cardbuild(10.0),
                cardbuild(0.0),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar:BottomNavyBar(
        backgroundColor: Color(0xE72C2C2D),
        containerHeight: 75,
        selectedIndex: selecteditem,
        onItemSelected: (int index) {
          setState(() {
            selecteditem=index;
          });
        },
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            activeColor: Colors.black ,
            inactiveColor: Colors.pink,
            icon: Icon(Icons.home,color: Colors.white,),
            title:Text("Home",style: TextStyle(color: Colors.white),)
          ),
          BottomNavyBarItem(
            activeColor: Colors.black,
              inactiveColor: Colors.pink,
            icon: Icon(Icons.favorite_border,color: Colors.white,),
              title:Text("Favorite",style: TextStyle(color: Colors.white),)
          ),
          BottomNavyBarItem(
            activeColor: Colors.black,
              inactiveColor: Colors.pink,
            icon: Icon(Icons.widgets_outlined,color: Colors.white,),
              title:Text("Widgets",style: TextStyle(color: Colors.white),)
          ),
          BottomNavyBarItem(
            activeColor: Colors.black,
              inactiveColor: Colors.pink,
            icon: Icon(Icons.save,color: Colors.white,),
              title:Text("Save",style: TextStyle(color: Colors.white),)
          ),
        ],
      ),
      backgroundColor: Color(0xE72C2C2D),
    ));
  }
}
