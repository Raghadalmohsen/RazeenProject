import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';

class Safeplacestory extends StatefulWidget {
  const Safeplacestory({Key? key}) : super(key: key);

  @override
  _SafeplacestoryState createState() => _SafeplacestoryState();
}

class _SafeplacestoryState extends State<Safeplacestory> {
  late FlickManager flickManager;
   void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
          VideoPlayerController.asset('assets/safeplaceStory.mp4'),
    );
  }
   void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
                       extendBodyBehindAppBar: true, //زر الرجوع
        appBar: AppBar(
          // 1. Back Arrow Icon
          actions:<Widget>[
        IconButton(
            iconSize: 40,
            color: Color.fromARGB(255, 5, 0, 36),
            icon: Icon(Icons.arrow_forward),
            onPressed: () => Navigator.pop(context),
          ),

          ],
           backgroundColor: Color.fromARGB(0, 213, 204, 243),
          elevation: 0,
       
          leading: IconButton(  
             color: Color.fromARGB(0, 5, 0, 36),
             onPressed: (){},      
             icon: Icon(Icons.arrow_forward),)
          ),
      body: Center(
          child: AspectRatio(
            aspectRatio: 16/9,
            child: FlickVideoPlayer(flickManager: flickManager),
            
            
            ),



      ),
    );
  }
}
