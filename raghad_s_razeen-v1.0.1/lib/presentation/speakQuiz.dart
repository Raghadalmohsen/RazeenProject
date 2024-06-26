import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/speakskill.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:firebase_auth/firebase_auth.dart';

class SpeakQuiz extends StatefulWidget {
   final int correctAnswersCount;

 SpeakQuiz({required this.correctAnswersCount});

  @override
  _SpeakQuizState createState() => _SpeakQuizState(correctAnswersCount: correctAnswersCount);
  
}

class _SpeakQuizState extends State<SpeakQuiz> {
          @override
void dispose() {
  player1.dispose();
  player2.dispose();
  player3.dispose();
  super.dispose();
}
     int correctAnswersCount;
  var player1 = AudioPlayer();
  var player2 = AudioPlayer();
  var player3 = AudioPlayer();
  

  _SpeakQuizState ({required this.correctAnswersCount});
  List<Map<String, dynamic>> quizData = [
    
    {
      'questionImage': 'assets/images/Q3quiz4.png',
      'choices': ['                        ليس خطئي', '                       أنا اسف يا جدي'],
      'correctAnswerIndex': 1,
    },
  ];


////////////////////////////////////////////leval
  void updateUserQuizCompletionStatus() async {
  // Get the currently authenticated user
  User? user = FirebaseAuth.instance.currentUser;

  if (user != null) {
    String userId = user.uid;

    // Update the Firestore document with the new value
    try {
User? user = FirebaseAuth.instance.currentUser;

if (user != null) {
  String userId = user.uid;

  await FirebaseFirestore.instance
      .collection('users')
      .doc(userId)
      .update({
    'skills.skill4.isQuizCompleted': true,
  });
}
      print('Quiz completion status updated in Firestore');
    } catch (e) {
      print('Failed to update quiz completion status in Firestore: $e');
    }
  }
}

  void checkAnswer(int selectedAnswerIndex) {
  player1.stop();
  player2.stop();
  player3.stop();
  int correctAnswerIndex = quizData[0]['correctAnswerIndex']; 
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

              if (correctAnswersCount >= 2) {
                updateUserQuizCompletionStatus();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Happy()),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Sad()),
                );
              }
            },
            child: Text('موافق',style: TextStyle(fontSize: 18),),
          ),
        )
        ],
      );
    },
  );
}

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
                                    'assets/images/Q3quiz4.png',
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
                                            Text( '                           ليس خطئي',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            ElevatedButton(
                                                onPressed: () {
                                                  // var player1 = AudioPlayer();
                                                  player1.stop();
                                                  player3.stop();
                                                  
                                                  /// new
                                                  player2.play(AssetSource(
                                                      'notMyfault.mp3'));

                                                  /// new
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  foregroundColor: Colors.black,
                                                  elevation: 0,
                                                ),
                                                child: Image.asset(
                                                    ImageConstant.imgImage164,height: 28.v,
                                                width: 27.h,))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
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
                                            Text( '                       أنا اسف يا جدي',
                                              style: TextStyle(
                                                fontSize: 16,
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                             ElevatedButton(
                                                onPressed: () {
                                                  // var player2 = AudioPlayer();
                                                  player1.stop();
                                                  player2.stop();

                                                  /// new
                                                  player3.play(AssetSource('Im_Sorry.mp3'));

                                                  /// new
                                                },
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  foregroundColor: Colors.black,
                                                  elevation: 0,
                                                ),
                                                child: Image.asset(
                                                    ImageConstant.imgImage164,height: 28.v,
                                                width: 27.h,))
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  
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


}

class Happy extends StatelessWidget {
  // الفيدباك happy
  Happy({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SizedBox(
          height: SizeUtils.height,
          width: 394.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.Background, //الخلفيه
                height: 852.v,
                width: 394.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 73.v),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          height: 554.v,
                          width: 394.h,
                          margin: EdgeInsets.only(bottom: 126.v),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              // CustomImageView(
                              //   imagePath: ImageConstant.HappyFeedback,// فيدباك
                              //   height: 508.v,
                              //   width: 382.h,
                              //   alignment: Alignment.topLeft,
                              // ),
  
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  height: 447.v,
                                  width: 329.h,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: <Widget>[
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: 447.v,
                                          width: 329.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.blue5066,
                                            borderRadius: BorderRadius.circular(
                                              35.h,
                                            ),
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .HappyFeedback, // فيدباك
                                          height: 410.v,
                                          width: 300.h,
                                          alignment: Alignment.center,
                                          margin:
                                              EdgeInsets.only(bottom: 42.v)),
                                      CustomElevatedButton(
                                        width: 92.h,
                                        text: "التالي",
                                        margin: EdgeInsets.only(bottom: 20.v),
                                        alignment: Alignment.bottomCenter,
                                        onPressed: () {
                                          //بداية كود تنقل الزر
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Speakskill(speak:'speak')), //next page فيه حركه غبيه هنا هل بنقعد نكرر لكل مهارة الفيدباك ؟؟؟؟
                                          );

                                          // Navigator.pop(context); // Navigate back to the previous screen
                                        }, //نهاية التنقل
                                      ),
                                  
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}

class Sad extends StatelessWidget {
  Sad({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SizedBox(
          height: SizeUtils.height,
          width: 394.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.Background, //الخلفيه
                height: 852.v,
                width: 394.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 73.v),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          height: 554.v,
                          width: 394.h,
                          margin: EdgeInsets.only(bottom: 126.v),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              // CustomImageView(
                              //   imagePath: ImageConstant.HappyFeedback,// فيدباك
                              //   height: 508.v,
                              //   width: 382.h,
                              //   alignment: Alignment.topLeft,
                              // ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: SizedBox(
                                  height: 447.v,
                                  width: 329.h,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: 447.v,
                                          width: 329.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.blue5066,
                                            borderRadius: BorderRadius.circular(
                                              35.h,
                                            ),
                                            
                                          ),
                                        ),
                                      ),
                                      CustomImageView(
                                        imagePath: ImageConstant.SadFeedback, // فيدباك
                                        height: 356.v,
                                        width: 380.h,
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.only(bottom: 42.v)
                                      ),
                                      CustomElevatedButton(
                                        width: 92.h,
                                        text: "موافق",
                                        margin: EdgeInsets.only(bottom: 20.v),
                                        alignment: Alignment.bottomCenter,
                                        onPressed: () {
                                          //بداية كود تنقل الزر
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Speakskill(speak:'speak')), //next page فيه حركه غبيه هنا هل بنقعد نكرر لكل مهارة الفيدباك ؟؟؟؟
                                          );
                                          // Navigator.pop(context); // Navigate back to the previous screen
                                        }, //نهاية التنقل
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}




