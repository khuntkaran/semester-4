import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  Widget menubarText(String data){
    return Container(
      child: Image.asset(data,fit: BoxFit.cover,height: 150,width: 100,),
      margin: EdgeInsets.fromLTRB(3, 2, 15, 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0xE72C2C2D),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)),
                        color: Colors.white,
                        elevation: 10,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(10, 7, 10, 5),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Align(
                                      alignment: AlignmentDirectional.topStart,
                                      child: CircleAvatar(radius: 23,backgroundColor: Color(0x94A8A8A8),child: Icon(Icons.arrow_back,color: Colors.black,))),
                                  Align(
                                      alignment: AlignmentDirectional.topEnd,
                                      child: CircleAvatar(radius: 23,backgroundColor: Color(0x94A8A8A8),child: Icon(Icons.menu,color: Colors.black,))),
                                ],
                              ),
                              Stack(
                                children: [
                                  Align(alignment:AlignmentDirectional.topStart,child: Container(margin:EdgeInsets.only(top: 10),child: Text("(G)I-DLE 'Nxde Music\nVideo behind sence" ,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 22),))),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10.0),
                                        child: Image.asset('assets/images/music.jpg',fit: BoxFit.cover,height: 200,width: 700,)
                                    ),
                                  ],
                                ),
                              ),
                              Stack(
                                children: [
                                  Align(
                                      alignment: AlignmentDirectional.topStart,
                                      child:Text("1.3M Views • Uplooded 2 Weeks Ago",style: TextStyle(fontSize: 10),)
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child:CircleAvatar(radius: 35,backgroundColor: Color(0xE72C2C2D),child: Container(
                                        margin: EdgeInsets.all(15),
                                        child: Column(
                                          children: [
                                            Icon(Icons.thumb_up,color: Colors.white,size: 25,),
                                            Text("34k",style: TextStyle(color: Colors.white,fontSize: 10),)
                                          ],
                                        ),
                                      ))
                                    ),
                                    Expanded(
                                        child:CircleAvatar(radius: 35,backgroundColor: Color(0xE72C2C2D),child: Container(
                                          margin: EdgeInsets.all(15),
                                          child: Column(
                                            children: [
                                              Icon(Icons.messenger,color: Colors.white,size: 25,),
                                              Text("1729",style: TextStyle(color: Colors.white,fontSize: 10),)
                                            ],
                                          ),
                                        ))
                                    ),
                                    Expanded(
                                        child:CircleAvatar(radius: 35,backgroundColor: Color(0xE72C2C2D),child: Container(
                                          margin: EdgeInsets.all(15),
                                          child: Column(
                                            children: [
                                              Icon(Icons.screen_share_outlined,color: Colors.white,size: 25,),
                                              Text("12k",style: TextStyle(color: Colors.white,fontSize: 10),)
                                            ],
                                          ),
                                        ))
                                    ),
                                    Expanded(
                                        child:CircleAvatar(radius: 35,backgroundColor: Color(0xE72C2C2D),child: Container(
                                          margin: EdgeInsets.all(15),
                                          child: Column(
                                            children: [
                                              Icon(Icons.download_rounded,color: Colors.white,size: 25,),
                                              Text("982",style: TextStyle(color: Colors.white,fontSize: 10),)
                                            ],
                                          ),
                                        ))
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                child: Text(
                                  "See how (G)I-DLE was behind the scenes of making the music video for 'NXDE' and see what the members thought of their new song and ...",
                                  style: TextStyle(color: Colors.grey,fontSize: 10),
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(child: CircleAvatar(radius: 23,backgroundColor: Color(0xE72C2C2D),child: CircleAvatar(backgroundImage: NetworkImage("https://wallpaperaccess.com/full/1311997.jpg"), radius: 20,)),margin: EdgeInsets.fromLTRB(0, 0, 5, 0)),
                                        Expanded(child: Container(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text("(G)I-DLE Official " ,style: TextStyle(fontSize:11,fontWeight: FontWeight.bold,),),
                                                Icon(Icons.verified,color: Colors.blue,size: 15,)
                                              ],
                                            ),
                                            Text("37MFollowers",style: TextStyle(fontSize: 8,color: Colors.grey)),
                                          ],
                                        ))),
                                        Expanded(
                                          child: Container(child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.end,
                                            children: [
                                              TextButton(
                                                onPressed: (){

                                                },
                                                child: Container(
                                                    padding:EdgeInsets.fromLTRB(20, 5, 20, 5),
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(25),
                                                      color: Color(0xE72C2C2D),
                                                    ),
                                                    child: Text("Follow",style: TextStyle(color: Colors.white ,fontSize: 10 ),)),),
                                            ],
                                          ),
                                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                margin: EdgeInsets.fromLTRB(0,10,0,10),),
                              Row(
                                children: [
                                  Text("Related Video",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(bottom: 15),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      menubarText("assets/images/bullet.jpg"),
                                      menubarText("assets/images/bullet.jpg"),
                                  menubarText("assets/images/bullet.jpg"),
                                  menubarText("assets/images/bullet.jpg"),
                                    ],

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                  ),
                ],
              ),
            )
        )
    );
  }
}
