import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:maze/src/models/item.dart' as maze_item;

class MazeGame extends StatefulWidget {
  MazeGame({Key? key}) : super(key: key);

  @override
  _MazePageState createState() => _MazePageState();
}

class _MazePageState extends State<MazeGame> {
  bool gameFinished = false;

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'رائع',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          content: Text(
            'لقد فزت باللعبة ولبيت طلب جدك',
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          actions: [
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog
                  Navigator.pop(context); // Navigate back to the previous screen
                },
                child: Text('موافق', style: TextStyle(fontSize: 18, color: Colors.blue)),
              ),
            ),
          ],
        );
      },
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
                SizedBox(height: 25.v),
                Container(
                  height: 58.v,
                  width: 301.h,
                  decoration: BoxDecoration(
                    color: appTheme.yellow100,
                    borderRadius: BorderRadius.circular(29.h),
                  ),
                ),
                SizedBox(height: 0),
                Container(
                  width: 256.h,
                  child: Text(
                    "احضر الماء لجدك ",
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 0.v),
                CustomImageView(
                  imagePath: ImageConstant.imgImage167,
                  height: 28.v,
                  width: 27.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 32.h),
                ),
              ],
            ),
            Positioned(
              top: 0.v,
              right: 0,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage23,
                height: 114.v,
                width: 94.h,
                alignment: Alignment.topRight,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                height: 2.0,
              ),
            ),
    
            
            Positioned(
              top: 0,
              child: Maze(
                player: MazeItem(
                  'assets/images/water.png',
                  maze_item.ImageType.asset,
                ),
                columns: 4,
                rows: 8,
                wallThickness: 4.0,
                wallColor: Theme.of(context).primaryColor,
                finish: MazeItem(
                  'assets/images/grandfather.png',
                  maze_item.ImageType.asset,
                ),
                onFinish: () {
                  if (!gameFinished) {
                    _showSuccessDialog(context); // Pass the context to _showSuccessDialog
                    setState(() {
                      gameFinished = true;
                    });
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}




 
