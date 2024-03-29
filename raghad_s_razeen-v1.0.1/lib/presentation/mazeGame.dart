import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:maze/src/models/item.dart' as maze_item;
import 'package:audioplayers/audioplayers.dart';
import 'package:raghad_s_razeen/presentation/gameFeedback.dart';
import 'package:raghad_s_razeen/presentation/medalsFeedback.dart';

class MazeGame extends StatefulWidget {
  MazeGame({Key? key}) : super(key: key);

  @override
  _MazePageState createState() => _MazePageState();
}

class _MazePageState extends State<MazeGame> {
  bool gameFinished = false;

  void _NavigatorToFeedback(BuildContext context) {
        
                  Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        GameFeedback()), //next page 
              );
              
                 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
    Align(
  alignment: Alignment.topCenter,
  child: Container(
    height: 58.v,
    width: 301.h,
    margin: EdgeInsets.only(top: 30.v),
    decoration: BoxDecoration(
      color: appTheme.yellow100,
      borderRadius: BorderRadius.circular(29.h),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // CustomImageView(
            //   imagePath: ImageConstant.imgImage167,
            //   height: 28.v,
            //   width: 27.h,
            //   alignment: Alignment.topLeft,
            //   margin: EdgeInsets.only(left: 0.h), // Adjust as needed
            // ),
            Expanded(
              child: Text(
                "                         احضر الماء لجدك",
                  overflow: TextOverflow.ellipsis,
                      // style: theme.textTheme.titleMedium,
                      style:TextStyle(fontSize: 18,color: Colors.black),
              ),
            ),
            
          ],
        ),
      ],
      
      
    ),
  ),
),
                
              ],
            ),
            Positioned(
              top: 3.v,
              right: 0,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage23,//star
                height: 100.v,
                width: 94.h,
                alignment: Alignment.topRight,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Color.fromARGB(255, 0, 0, 0),
                height: 2.0,
              ),
            ),
    
            
            Positioned(
              top: 0,
              child: Maze(
                player: MazeItem(
                  'assets/images/water3.png',
                  maze_item.ImageType.asset,
                ),
                columns: 4,
                rows: 8,
                wallThickness: 5.0,
                wallColor: Theme.of(context).primaryColorDark,
                finish: MazeItem(
                  'assets/images/grandfather.png',
                  maze_item.ImageType.asset,
                ),
                
                onFinish: () {
                  if (!gameFinished) {
                    _NavigatorToFeedback(context); // Pass the context to _showSuccessDialog
                    setState(() {
                      gameFinished = true;
                    });
                  }
                },
              ),
            ),
            Container(///new
                            height: 28.v,
                            width: 27.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left:70.h, bottom:350, top: 20),
                            child: ElevatedButton(
                                onPressed: () {
                                final player = AudioPlayer();/// new
                                player.play(AssetSource('maze_water.mp3'));/// new
                                },
                                style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.black,
                              elevation: 0,
                                ),
                            
                          child: Image.asset(ImageConstant.imgImage164))),//end new
          ],
          
        ),
      ),
    );
  }
}




 
