import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {

  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network("https://media.istockphoto.com/id/1329036936/video/night-view-of-hong-kong-island-from-victoria-harbour-in-hong-kong.mp4?s=mp4-640x640-is&k=20&c=UW-zNGSBMM_hXnzTO4e3kXuwjdNb-A4CPf51LFuj1tU=",);
    _initializeVideoPlayerFuture = _controller.initialize();
    _controller.setLooping(true);
    _controller.setVolume(1.0);
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
                                      child: TextButton(
                                        onPressed: (){
                                          Navigator.of(context).pop();
                                        },
                                          child: CircleAvatar(radius: 23,backgroundColor: Color(0x94A8A8A8),child: Icon(Icons.arrow_back,color: Colors.black,))
                                      )
                                  ),
                                  Align(
                                      alignment: AlignmentDirectional.topEnd,
                                      child: CircleAvatar(radius: 23,backgroundColor: Color(0x94A8A8A8),child: Icon(Icons.menu,color: Colors.black,))),
                                ],
                              ),
                              Stack(
                                children: [
                                  Align(alignment:AlignmentDirectional.topStart,child: Container(margin:EdgeInsets.only(top: 10),child: Text("(G)I-DLE 'Nxde Music\nVideo behind sence" ,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,fontFamily: "Inter"),))),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ClipRRect(
                                          borderRadius: BorderRadius.circular(10.0),
                                          child: FutureBuilder(
                                            future: _initializeVideoPlayerFuture,
                                            builder: (context,snapshot){
                                              if(snapshot.connectionState == ConnectionState.done){
                                                return AspectRatio(
                                                  aspectRatio: _controller.value.aspectRatio,
                                                  child: Chewie(
                                                      controller: ChewieController(
                                                        videoPlayerController: _controller,
                                                        materialProgressColors:ChewieProgressColors(backgroundColor: Color(0x49CDCDD3),playedColor: Colors.white)
                                                      ),
                                                  // child: VideoPlayer(_controller,)),
                                                  )
                                                );
                                              }
                                              else{
                                                return Center(
                                                  child: CircularProgressIndicator(),
                                                );
                                              }
                                            },
                                          )
                                      ),
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
                                                Text("(G)I-DLE Official " ,style: TextStyle(fontSize:11,fontFamily: "Inter",fontWeight: FontWeight.bold,),),
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
                                  Text("Related Video",style: TextStyle(fontFamily: "Inter",fontSize: 15,fontWeight: FontWeight.w500),),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10.0),
                                        child: Image.asset('assets/images/car.jpg',fit: BoxFit.cover,height: 200,width: 700,)
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                  ),
                ],
              ),
            ),
        )
    );
  }
}
