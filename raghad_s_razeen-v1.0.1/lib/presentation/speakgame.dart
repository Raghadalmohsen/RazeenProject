import 'package:flutter/material.dart';
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
  bool _isBlueDropped = false;
  bool _isRedDropped = false;
  bool _isYelloDropped = false;
  bool _isGreenDropped = false;
  String _blue = 'blue';
  String _red = 'red';
  String _yellow = 'yellow';
  String _green = 'green';

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
    if (_isBlueDropped && _isRedDropped && _isYelloDropped && _isGreenDropped) {
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
                  imagePath: ImageConstant.BackgroundHouse,
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
                                  margin: EdgeInsets.only(left: 6.h, top: 50),
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
                                                  child: Image.asset(_isBlueDropped
                                                      ? 'assets/images/puzzle11.png'
                                                      : 'assets/images/puzzle1.png'),
                                                );
                                              },
                                              onWillAccept: (data) {
                                                return data == _blue;
                                              },
                                              //////////////////////
                                              onAccept: (data) {
                                                setState(() {
                                                  _isBlueDropped = true;
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
                                                  child: Image.asset(_isRedDropped
                                                      ? 'assets/images/puzzle33.png'
                                                      : 'assets/images/puzzle3.png'),
                                                );
                                              },
                                              onWillAccept: (data) {
                                                return data == _red;
                                              },
                                              ///////////////
                                              onAccept: (data) {
                                                setState(() {
                                                  _isRedDropped = true;
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
                                                  child: Image.asset(_isYelloDropped
                                                      ? 'assets/images/puzzle22.png'
                                                      : 'assets/images/puzzle2.png'),
                                                );
                                              },
                                              onWillAccept: (data) {
                                                return data == _yellow;
                                              },
                                              //////////////
                                              onAccept: (data) {
                                                setState(() {
                                                  _isYelloDropped = true;
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
                                                  child: Image.asset(_isGreenDropped
                                                      ? 'assets/images/puzzle44.png'
                                                      : 'assets/images/puzzle4.png'),
                                                );
                                              },
                                              onWillAccept: (data) {
                                                return data == _green;
                                              },
                                              /////////////////
                                              onAccept: (data) {
                                                setState(() {
                                                  _isGreenDropped = true;
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
                                  //  margin: EdgeInsets.only(
                                  //                           top: 80.v,
                                  //                           right: 1.h,
                                  //                           bottom: 120.v,
                                  //                         ),
                                  // padding: EdgeInsets.symmetric(
                                  //   horizontal: 4.h,
                                  //   vertical: 30.v,
                                  // ),
                                  // decoration: AppDecoration.outlinePrimary1.copyWith(
                                  //   borderRadius: BorderRadiusStyle.roundedBorder33,
                                  // ),
                                  width:
                                      MediaQuery.of(context).size.width * 0.15,
                                ),
                                // Divider(
                                //   thickness: 100,
                                //   color: Colors.white,
                                // ),
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Visibility(
                                          visible: !_isRedDropped,
                                          child: Draggable<String>(
                                            // Data is the value this Draggable stores.
                                            data: _red,
                                            child: Container(
                                              height: 130.0,
                                              width: 130.0,
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
                                          visible: !_isGreenDropped,
                                          child: Draggable<String>(
                                            // Data is the value this Draggable stores.
                                            data: _green,
                                            child: Container(
                                              height: 130.0,
                                              width: 130.0,
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
                                          visible: !_isBlueDropped,
                                          child: Draggable<String>(
                                            // Data is the value this Draggable stores.
                                            data: _blue,
                                            child: Container(
                                              height: 130.0,
                                              width: 130.0,
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
                                          visible: !_isYelloDropped,
                                          child: Draggable<String>(
                                            // Data is the value this Draggable stores.
                                            data: _yellow,
                                            child: Container(
                                              height: 130.0,
                                              width: 130.0,
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
                            margin: EdgeInsets.only(top: 120.v),
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
                            margin: EdgeInsets.only(top: 133.v),
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
                                right: 300.h, bottom: 580, top: 110),
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
                  margin: EdgeInsets.only(top: 90.v),
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
