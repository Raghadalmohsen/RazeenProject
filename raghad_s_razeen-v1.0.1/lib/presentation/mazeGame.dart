import 'package:flutter/material.dart';
import 'package:maze/maze.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:maze/src/models/item.dart' as maze_item;
import 'package:audioplayers/audioplayers.dart';

import 'package:raghad_s_razeen/presentation/medalsFeedback.dart';
import 'package:raghad_s_razeen/presentation/razeenmap.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

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
      MaterialPageRoute(builder: (context) => MazeFeedback()), //next page
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
                            Expanded(
                              child: Text(
                                "                         احضر الماء لجدك",
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
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
                imagePath: ImageConstant.imgImage23,
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
                    _NavigatorToFeedback(context);
                    setState(() {
                      gameFinished = true;
                    });
                  }
                },
              ),
            ),
            Container(

                ///new
                height: 28.v,
                width: 27.h,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 70.h, bottom: 350, top: 20),
                child: ElevatedButton(
                    onPressed: () {
                      final player = AudioPlayer();
                      player.play(AssetSource('maze_water.mp3'));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.black,
                      elevation: 0,
                    ),
                    child: Image.asset(ImageConstant.imgImage164))),
          ],
        ),
      ),
    );
  }
}

//feedback

class MazeFeedback extends StatefulWidget {
  MazeFeedback({Key? key}) : super(key: key);

  @override
  _MazeFeedbackState createState() => _MazeFeedbackState();
}

class _MazeFeedbackState extends State<MazeFeedback> {
  late String userId;

  void _getUserUid() async {
    ///////////
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      setState(() {
        userId = user.uid;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _getUserUid();
  }

////////////////////////
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.blue50B2,
            border: Border.all(
              color: appTheme.blue5066,
              width: 1.h,
            ),
            boxShadow: [
              BoxShadow(
                color: appTheme.blue5066.withOpacity(0.25),
                spreadRadius: 2.h,
                blurRadius: 2.h,
                offset: Offset(
                  0,
                  4,
                ),
              ),
            ],
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.BackgroundHouse2,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            decoration: AppDecoration.outlinePrimary.copyWith(
              image: DecorationImage(
                image: AssetImage(
                  ImageConstant.BackgroundHouse2,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Opacity(
                  opacity: 0.6,
                ),
                SizedBox(height: 94.v),
                _buildFour(context),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFour(BuildContext context) {
    return SizedBox(
      height: 681.v,
      width: 374.h,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.cloud,
            width: 374.h,
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 100),
          ),
          CustomElevatedButton(
            width: 92.h,
            text: "موافق",
            margin: EdgeInsets.only(bottom: 265.v),
            alignment: Alignment.bottomCenter,
            onPressed: () async {
              var visitCount = 0;

              DocumentSnapshot snapshot = await FirebaseFirestore.instance
                  .collection('users')
                  .doc(userId)
                  .get();

              var data = snapshot.data();
              if (data != null) {
                DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
                    .collection('users')
                    .doc(userId)
                    .get();

                if (userSnapshot.exists) {
                  print('User progress data: ${userSnapshot.data()}');

                  Map<String, dynamic> userData =
                      userSnapshot.data() as Map<String, dynamic>;
                  Map<String, dynamic> skillsData =
                      userData['skills'] as Map<String, dynamic>;
                  Map<String, dynamic> skill2Data =
                      skillsData['skill2'] as Map<String, dynamic>;

                  setState(() {
                                     visitCount = skill2Data['visit'] ?? 0;
                  });
                }
              }

              visitCount++; 

              await FirebaseFirestore.instance
                  .collection('users')
                  .doc(userId)
                  .update({
                'skills.skill2.visit': visitCount,
              });

              if (visitCount == 1) {
//اول مره
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MedalsFeedback()),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Razeenmap()),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
