import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/speakQuizq2.dart';
import 'package:audioplayers/audioplayers.dart';


class SpeakQuizq1 extends StatefulWidget {
  const SpeakQuizq1({Key? key}) : super(key: key);

  @override
  _SpeakQuizq1State createState() => _SpeakQuizq1State();
}

class _SpeakQuizq1State extends State<SpeakQuizq1> {
            @override
void dispose() {
  player1.dispose();
  player2.dispose();
  player3.dispose();
  super.dispose();
}

  int correctAnswersCount = 0;
  var player1 = AudioPlayer();
  var player2 = AudioPlayer();
  var player3 = AudioPlayer();

  List<Map<String, dynamic>> quizData = [
    {
      'questionImage': 'assets/images/Q1quiz4.png',
      'choices': [
        '                  شكرًا ياجدي على هذه الهدية الرائعة',
        '                        لا أريد هذه الهدية لم تعجبني'
      ],
      'correctAnswerIndex': 0,
    },
  ];

  // int correctAnswersCount = 0;

  void checkAnswer(int selectedAnswerIndex) {
  player1.stop();
  player2.stop();
  player3.stop();
    int correctAnswerIndex =
        quizData[0]['correctAnswerIndex']; // Replace with your quiz data
    bool isCorrect = selectedAnswerIndex == correctAnswerIndex;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(isCorrect ? 'إجابة صحيحة' : 'إجابة خاطئة',textAlign:TextAlign.center ,),
          actions: [Center(child: 
            TextButton(
              onPressed: () {
                Navigator.pop(context);

                if (isCorrect) {
                  correctAnswersCount++;
                }

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SpeakQuizq2( correctAnswersCount: correctAnswersCount, ),
                  ),
                );
              },
              child: Text('موافق',style: TextStyle(fontSize: 18),),
            ),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 394.h,
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: SizedBox(
              height: SizeUtils.height,
              width: 394.h,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: SizeUtils.height,
                      width: 394.h,
                      padding: EdgeInsets.only(
                        left: 32.h,
                        top: 92.v,
                        right: 32.h,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.Background,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: EdgeInsets.only(
                                top: 70.v,
                                right: 1.h,
                                left: 1,
                                bottom: 85,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 1.h,
                                vertical: 62.v,
                              ),
                              decoration: //الكونتينر
                                  AppDecoration.outlinePrimary1.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder33,
                              ),
                              // البدايه
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/Q1quiz4.png',
                                    width: 400,
                                    height: 301,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(height: 16),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        checkAnswer(0); // Index of the first choice
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        padding: EdgeInsets.only(left: 1),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Row(
                                          children: [
                                            SizedBox( width: 1), // Space between image and text
                                            Text( '         شكرًا ياجدي على هذه الهدية الرائعة',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            ElevatedButton(
                                                onPressed: () {
                                                  // final player = AudioPlayer();
                                                    player1.stop();
                                                    player3.stop();
                                                  /// new
                                                  player2.play(AssetSource(
                                                      'thankyouGift.mp3'));

                                                  /// new
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  foregroundColor: Colors.black,
                                                  elevation: 0,
                                                ),
                                                child: Image.asset(
                                                  ImageConstant.imgImage164,
                                                  width: 27.h,
                                                  height: 28.v,
                                                ))
                                            // Container(

                                            //     ///new
                                            //     height: 28.v,
                                            //     width: 27.h,
                                            //     alignment: Alignment.topLeft,
                                                
                                            //     child: ElevatedButton(
                                            //         onPressed: () {
                                            //           final player =
                                            //               AudioPlayer();

                                            //           /// new
                                            //           player.play(AssetSource(
                                            //               'assets/thankyouGift.mp3'));

                                            //           /// new
                                            //         },
                                            //         style: ElevatedButton
                                            //             .styleFrom(
                                            //           backgroundColor:
                                            //               Colors.transparent,
                                            //           foregroundColor:
                                            //               Colors.black,
                                            //           elevation: 0,
                                            //         ),
                                            //         child: Image.asset(ImageConstant
                                            //             .imgImage164))), //end new
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  // Container(

                                  //               ///new
                                  //               height: 28.v,
                                  //               width: 27.h,
                                  //               alignment: Alignment.topLeft,
                                               
                                  //               child: ElevatedButton(
                                  //                   onPressed: () {
                                  //                     var player1 =
                                  //                         AudioPlayer();

                                  //                     /// new
                                  //                     player1.play(AssetSource(
                                  //                         'thankyouGift.mp3'));

                                  //                     /// new
                                  //                   },
                                  //                   style: ElevatedButton
                                  //                       .styleFrom(
                                  //                     backgroundColor:
                                  //                         Colors.transparent,
                                  //                     foregroundColor:
                                  //                         Colors.black,
                                  //                     elevation: 0,
                                  //                   ),
                                  //                   child: Image.asset(ImageConstant
                                  //                       .imgImage164))),
                                  Padding(
                                    padding: EdgeInsets.symmetric(vertical: 8),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        checkAnswer(1); // Index of the second choice
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        padding: EdgeInsets.only(left: 1),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Row(
                                          children: [
                                            SizedBox( width: 1), // Space between image and text
                                            Text( '                لا أريد هذه الهدية لم تعجبني',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                             ElevatedButton(
                                                onPressed: () {
                                                  // final player = AudioPlayer();
                                                    player1.stop();
                                                    player2.stop();
                                                  /// new
                                                  player3.play(AssetSource(
                                                      'noGift.mp3'));

                                                  /// new
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  foregroundColor: Colors.black,
                                                  elevation: 0,
                                                ),
                                                child: Image.asset(
                                                    ImageConstant.imgImage164,
                                                    width: 27.h,
                                                  height: 28.v))
                                              //  Container(

                                              //   ///new
                                              //   height: 28.v,
                                              //   width: 27.h,
                                              //   alignment: Alignment.topLeft,
                                               
                                              //   child: ElevatedButton(
                                              //       onPressed: () {
                                              //         final player =
                                              //             AudioPlayer();

                                              //         /// new
                                              //         player.play(AssetSource(
                                              //             'assets/noGift.mp3'));

                                              //         /// new
                                              //       },
                                              //       style: ElevatedButton
                                              //           .styleFrom(
                                              //         backgroundColor:
                                              //             Colors.transparent,
                                              //         foregroundColor:
                                              //             Colors.black,
                                              //         elevation: 0,
                                              //       ),
                                              //       child: Image.asset(ImageConstant
                                              //           .imgImage164))),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  // Container(

                                  //               ///new
                                  //               height: 28.v,
                                  //               width: 27.h,
                                  //               alignment: Alignment.topLeft,
                                               
                                  //               child: ElevatedButton(
                                  //                   onPressed: () {
                                  //                      var player2 =
                                  //                         AudioPlayer();

                                  //                     /// new
                                  //                     player2.play(AssetSource(
                                  //                         'noGift.mp3'));

                                  //                     /// new
                                  //                   },
                                  //                   style: ElevatedButton
                                  //                       .styleFrom(
                                  //                     backgroundColor:
                                  //                         Colors.transparent,
                                  //                     foregroundColor:
                                  //                         Colors.black,
                                  //                     elevation: 0,
                                  //                   ),
                                  //                   child: Image.asset(ImageConstant
                                  //                       .imgImage164))),
                                  
                                ],
                              ),

                              // Column(
                              //   mainAxisSize: MainAxisSize.min,
                              //   crossAxisAlignment: CrossAxisAlignment.end,
                              //   children: [
                              //     SizedBox(height: 30.v),
                              //     CustomImageView(
                              //       imagePath: ImageConstant.Q1quiz4,//صورة الموقف
                              //       height: 245.v,
                              //       width: 317.h,
                              //       radius: BorderRadius.circular(
                              //         17.h,
                              //       ),
                              //       margin: EdgeInsets.only(right: 10.h),
                              //     ),
                              //     SizedBox(height: 29.v),
                              //     _buildDoctorReviews(
                              //       context,
                              //       widget:
                              //           "          شكرًا ياجدي على هذه الهدية الرائعة",
                              //     ),
                              //     SizedBox(height: 27.v),
                              //     _buildDoctorReviews(
                              //       context,
                              //       widget: "                    لا أريد هذه الهدية لم تعجبني",
                              //     ),
                              //   ],
                              // ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 58.v,
                              width: 301.h,
                              margin: EdgeInsets.only(top: 63.v, left: 15),
                              decoration: BoxDecoration(
                                //ورا السؤال
                                color: appTheme.yellow100,
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
                              margin: EdgeInsets.only(top: 79.v, left: 3),
                              // decoration: AppDecoration.outlinePrimary1, //ينحذف
                              child: Text(
                                "           ما الكلمة المناسبة لهذا الموقف؟  ",
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ),
                          // CustomImageView(
                          //   imagePath: ImageConstant.imgImage167, //الصوت عند السؤال
                          //   height: 28.v,
                          //   width: 27.h,
                          //   alignment: Alignment.topLeft,
                          //   margin: EdgeInsets.only(left: 18.h,top: 53),
                          // ),
                          Container(

                              ///new
                              height: 28.v,
                              width: 27.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(
                                  right: 240.h, bottom: 690, top: 30),
                              child: ElevatedButton(
                                  onPressed: () {
                                    // final player = AudioPlayer();
                                      player2.stop();
                                      player3.stop();

                                    /// new
                                    player1.play(AssetSource('whatWord.mp3'));

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
                    imagePath: ImageConstant.imgImage23114x111, //النجمة
                    height: 114.v,
                    width: 111.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 117.v),
                  ),
                  // CustomImageView(
                  //   imagePath: ImageConstant.imgScreenshot2023,//رزين
                  //   height: 180.v,
                  //   width: 133.h,
                  //   alignment: Alignment.bottomLeft,
                  //   margin: EdgeInsets.only(bottom: 20.v,),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
} //q1 //



