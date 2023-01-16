import 'package:flutter/material.dart';

class ImageAssetWeb extends StatefulWidget {
  const ImageAssetWeb({Key? key}) : super(key: key);

  @override
  State<ImageAssetWeb> createState() => _ImageAssetWebState();
}

class _ImageAssetWebState extends State<ImageAssetWeb> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Expanded(child: Container(child: Image.asset("assets/images/bullet.jpg",fit:BoxFit.fill),color:Colors.red,padding: EdgeInsets.all(4),)),
              Expanded(child: Container(child: Image.network("https://www.teahub.io/photos/full/1-10856_ultra-hd-4k-wallpaper-for-pc.png",fit:BoxFit.fill),color:Colors.red,padding: EdgeInsets.all(4),))
            ],
          ),
        ),
      ),
    );
  }
}
