import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:raghad_s_razeen/core/utils/image_constant.dart';
import 'package:raghad_s_razeen/core/utils/size_utils.dart';
import 'package:raghad_s_razeen/presentation/gameFeedback.dart';
import 'package:raghad_s_razeen/presentation/razeenmap.dart';
import 'package:raghad_s_razeen/presentation/speakskill.dart';
import 'package:raghad_s_razeen/theme/app_decoration.dart';
import 'package:raghad_s_razeen/theme/custom_text_style.dart';
import 'package:raghad_s_razeen/theme/theme_helper.dart';
import 'package:raghad_s_razeen/widgets/custom_image_view.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Speakgame extends StatefulWidget {
  const Speakgame({Key? key}) : super(key: key);

  @override
  _SpeakgameState createState() => _SpeakgameState();
}

GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();

class _SpeakgameState extends State<Speakgame> {
  bool _puzzle1 = false;
   bool _puzzle2 = false;
  bool _puzzle3 = false;
  bool _puzzle4 = false;
  String _puzzle11 = 'puzzle11';
  String _puzzle22 = 'puzzle22';
  String _puzzle33 = 'puzzle33';
  String _puzzle44 = 'puzzle44';

// late int score=0;

//  void initState() {
//     super.initState();
//     navigateToFeedbackScreen(); /////////////////////////////
//   }

//   void navigateToFeedbackScreen() {
//   if (score == 4) {// delete
//     Future.delayed(Duration(seconds: 0), () {// 3
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => Razeenmap()),// new class
//       );
//     });
//   }

//
//////////////////////////////

  void initState() {
    super.initState();
    navigateToFeedbackScreen();
  }

  void navigateToFeedbackScreen() {
    if (_puzzle1 && _puzzle3 && _puzzle2 && _puzzle4) {
      Future.delayed(Duration(seconds: 0), () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => GameFeedback()), //بعدين نغيرها لفيدباك اللعبة*
        );
      });
    }
  }

////////////

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: SizedBox(
            height: SizeUtils.height,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.BackgroundHouse2,
                  height: 858.v,
                  width: 393.h,
                  border: Border.all(),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 794.v,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(bottom: 5.v),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 20.h, right: 29.h, bottom: 65),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 75.v),
                                Container(
                                  margin: EdgeInsets.only(left: 6.h, top: 30),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 22.h,
                                    vertical: 90.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlinePrimary7.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder33,
                                  ),
                                  child: Center(
                                    child: Container(
                                      height: 314,
                                      width: 315,
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            top: 0,
                                            left: 0,
                                            child: DragTarget<String>(
                                              builder: (
                                                BuildContext context,
                                                List<dynamic> accepted,
                                                List<dynamic> rejected,
                                              ) {
                                                return Container(
                                                  height: 165,
                                                  width: 165,
                                                  child: Image.asset(_puzzle1
                                                      ? 'assets/images/puzzle11.png'
                                                      : 'assets/images/puzzle1.png'),
                                                );
                                              },
                                              onWillAccept: (data) {
                                                return data == _puzzle11;
                                              },
                                              //////////////////////
                                              onAccept: (data) {
                                                setState(() {
                                                  _puzzle1 = true;
                                                  // score++;
                                                });
                                                navigateToFeedbackScreen();
                                              },
                                              ////////////////
                                            ),
                                          ),
                                          Positioned(
                                            top: 0,
                                            right: 0,
                                            child: DragTarget<String>(
                                              builder: (
                                                BuildContext context,
                                                List<dynamic> accepted,
                                                List<dynamic> rejected,
                                              ) {
                                                return Container(
                                                  height: 165,
                                                  width: 165,
                                                  child: Image.asset(_puzzle3
                                                      ? 'assets/images/puzzle33.png'
                                                      : 'assets/images/puzzle3.png'),
                                                );
                                              },
                                              onWillAccept: (data) {
                                                return data == _puzzle33;
                                              },
                                              ///////////////
                                              onAccept: (data) {
                                                setState(() {
                                                  _puzzle3 = true;
                                                  // score++;
                                                });
                                                navigateToFeedbackScreen();
                                              },
                                              /////////////
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            left: 0,
                                            child: DragTarget<String>(
                                              builder: (
                                                BuildContext context,
                                                List<dynamic> accepted,
                                                List<dynamic> rejected,
                                              ) {
                                                return Container(
                                                  height: 165,
                                                  width: 165,
                                                  child: Image.asset(_puzzle2
                                                      ? 'assets/images/puzzle22.png'
                                                      : 'assets/images/puzzle2.png'),
                                                );
                                              },
                                              onWillAccept: (data) {
                                                return data == _puzzle22;
                                              },
                                              //////////////
                                              onAccept: (data) {
                                                setState(() {
                                                  _puzzle2 = true;
                                                  // score++;
                                                });
                                                navigateToFeedbackScreen();
                                              },
                                              /////////////
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child: DragTarget<String>(
                                              builder: (
                                                BuildContext context,
                                                List<dynamic> accepted,
                                                List<dynamic> rejected,
                                              ) {
                                                return Container(
                                                  height: 165,
                                                  width: 165,
                                                  child: Image.asset(_puzzle4
                                                      ? 'assets/images/puzzle44.png'
                                                      : 'assets/images/puzzle4.png'),
                                                );
                                              },
                                              onWillAccept: (data) {
                                                return data == _puzzle44;
                                              },
                                              /////////////////
                                              onAccept: (data) {
                                                setState(() {
                                                  _puzzle4 = true;
                                                  // score++;
                                                });
                                                navigateToFeedbackScreen();
                                              },
                                              //////////////////////
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                               
                                Container(
                                  height: 100,
                                  width: 1200,
                                  margin: EdgeInsets.only(top: 10),
                                 
                                      decoration: AppDecoration.outlinePrimary1.copyWith(
                                    borderRadius: BorderRadiusStyle.roundedBorder1,color: Colors.white,
                                  ),
                                  child: SingleChildScrollView(
                                    child: Row(
                                      children: [  
                                        Visibility(
                                          visible: !_puzzle3,
                                          child: Draggable<String>(
                                            // Data is the value this Draggable stores.
                                            data: _puzzle33,
                                            child: Container(

                                              height: 90.0,
                                              width: 90.0,
                                              child: Center(
                                                child: Image.asset(
                                                    'assets/images/puzzle33.png'),
                                              ),
                                            ),
                                            feedback: Container(
                                              height: 130.0,
                                              width: 130.0,
                                              child: Center(
                                                child: Image.asset(
                                                    'assets/images/puzzle33.png'),
                                              ),
                                            ),
                                            childWhenDragging: Container(),
                                          ),
                                        ),
                                        Visibility(
                                          visible: !_puzzle4,
                                          child: Draggable<String>(
                                            // Data is the value this Draggable stores.
                                            data: _puzzle44,
                                            child: Container(
                                              height: 90.0,
                                              width: 90.0,
                                              child: Center(
                                                child: Image.asset(
                                                    'assets/images/puzzle44.png'),
                                              ),
                                            ),
                                            feedback: Container(
                                              height: 130.0,
                                              width: 130.0,
                                              child: Center(
                                                child: Image.asset(
                                                    'assets/images/puzzle44.png'),
                                              ),
                                            ),
                                            childWhenDragging: Container(),
                                          ),
                                        ),
                                        Visibility(
                                          visible: !_puzzle1,
                                          child: Draggable<String>(
                                            // Data is the value this Draggable stores.
                                            data: _puzzle11,
                                            child: Container(
                                              height: 90.0,
                                              width: 90.0,
                                              child: Center(
                                                child: Image.asset(
                                                    'assets/images/puzzle11.png'),
                                              ),
                                            ),
                                            feedback: Container(
                                              height: 130.0,
                                              width: 130.0,
                                              child: Center(
                                                child: Image.asset(
                                                    'assets/images/puzzle11.png'),
                                              ),
                                            ),
                                            childWhenDragging: Container(),
                                          ),
                                        ),
                                        Visibility(
                                          visible: !_puzzle2,
                                          child: Draggable<String>(
                                            // Data is the value this Draggable stores.
                                            data: _puzzle22,
                                            child: Container(
                                              height: 90.0,
                                              width: 90.0,
                                              child: Center(
                                                child: Image.asset(
                                                    'assets/images/puzzle22.png'),
                                              ),
                                            ),
                                            feedback: Container(
                                              height: 130.0,
                                              width: 130.0,
                                              child: Center(
                                                child: Image.asset(
                                                    'assets/images/puzzle22.png'),
                                              ),
                                            ),
                                            childWhenDragging: Container(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            height: 58.v,
                            width: 340.h,
                            margin: EdgeInsets.only(top: 90.v),
                            decoration: BoxDecoration(
                              color: appTheme.yellow100, ///////////////
                              borderRadius: BorderRadius.circular(
                                29.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: 256.h,
                            margin: EdgeInsets.only(top: 100.v),
                            // decoration: AppDecoration.outlinePrimary1,////////////////
                            child: Text(
                              "                  قم بترتيب الصوره",
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              // style: theme.textTheme.titleMedium,
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                          ),
                        ),
                        // CustomImageView(
                        //   imagePath: ImageConstant.imgImage167, ////// الصوت
                        //   height: 28.v,
                        //   width: 27.h,
                        //   alignment: Alignment.topLeft,
                        //   margin: EdgeInsets.only(left: 30.h, top: 110),
                        // ),
                        Container(

                            ///new
                            height: 28.v,
                            width: 27.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(
                                right: 330.h, bottom: 580, top: 80),
                            child: ElevatedButton(
                                onPressed: () {
                                  final player = AudioPlayer();

                                  /// new
                                  player.play(AssetSource('puzzle.mp3'));

                                  /// new
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  foregroundColor: Colors.black,
                                  elevation: 0,
                                ),
                                child: Image.asset(
                                    ImageConstant.imgImage164))), //end new
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage23, //النجمه
                  height: 114.v,
                  width: 94.h,
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(top: 86.v),
                ),
                // CustomImageView(
                //   imagePath: ImageConstant.imgScreenshot2023, //رزين
                //   height: 180.v,
                //   width: 133.h,
                //   alignment: Alignment.bottomLeft,
                //   margin: EdgeInsets.only(
                //     bottom: 20.v,
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void showSnackBarGlobal(BuildContext context, String message) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(
      message,
      textScaleFactor: 2,
    )));
  }

  
}
