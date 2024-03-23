// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/speakskill.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
import 'package:raghad_s_razeen/presentation/happyfeedback.dart';
import 'package:raghad_s_razeen/presentation/sadfeedback.dart';
import 'package:audioplayers/audioplayers.dart';

class SpeakQuiz extends StatefulWidget {
  const SpeakQuiz({Key? key}) : super(key: key);

  @override
  _SpeakQuizState createState() => _SpeakQuizState();
}

class _SpeakQuizState extends State<SpeakQuiz> {
  List<Map<String, dynamic>> quizData = [
    {
      'questionImage': 'assets/images/Q1quiz4.png',
      'choices': [
        '                  شكرًا ياجدي على هذه الهدية الرائعة',
        '                        لا أريد هذه الهدية لم تعجبني'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'questionImage': 'assets/images/Q2quiz4.png',
      'choices': [
        ' لو سمحت ياجدي هل يمكنك مساعدتي بحل هذه المسألة؟' ,
        '            يجب عليك مساعدتي بحل هذه المسألة'
      ],
      'correctAnswerIndex': 0,
    },
    {
      'questionImage': 'assets/images/Q3quiz4.png',
      'choices': ['                        ليس خطئي', '                       أنا اسف يا جدي'],
      'correctAnswerIndex': 1,
    },
  ];

  int currentIndex = 0;
  int correctAnswersCount = 0;

  void checkAnswer(int selectedAnswerIndex) {
    int correctAnswerIndex = quizData[currentIndex]['correctAnswerIndex'];
    bool isCorrect = selectedAnswerIndex == correctAnswerIndex;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(isCorrect? 'إجابة صحيحة' : 'إجابة خاطئة',textAlign: TextAlign.center,),
          actions: [
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  handleAnswer(isCorrect);
                },
              child: Text('موافق',style: TextStyle(fontSize: 18)),
            ),),
          ],
        );
      },
    );
  }

  void handleAnswer(bool isCorrect) {
    if (isCorrect) {
      correctAnswersCount++;
    }

    setState(() {
      if (currentIndex < quizData.length - 1) {
        currentIndex++;
      } else {
        if (correctAnswersCount >= 2) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Happy()),// new class 
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Sad()),//new class 
          );
        }
      }
    });
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
                              child: Column( //البداية
                                children: [
                                  Image.asset(
                                    quizData[currentIndex]['questionImage'],
                                    width: 400.h,
                                    height: 301.h,
                                    fit: BoxFit.cover,
                                  ),
                                  SizedBox(height: 16.h),
                                  ...List.generate( ///???????????????????????????????
                                    quizData[currentIndex]['choices'].length,
                                    (index) => Padding(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 8.h),
                                      child: ElevatedButton(
                                        onPressed: () {
                                          checkAnswer(index);
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:Colors.white ,
                                          padding: EdgeInsets.only(left:1), 
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8.0), 
                                          ),
                                        ),
                                        // child: Padding(
                                        //   padding: EdgeInsets.all(8.h),
                                        //   child: Text(
                                        //     quizData[currentIndex]['choices']
                                        //         [index],
                                        //     style: TextStyle(fontSize: 18,color: Colors.black),
                                        //   ),
                                        // ),
                                        
                                        child: Padding(
                                          padding: EdgeInsets.all(8.h),
                                          child: Row(
                                            children: [
                                              // CustomImageView(
                                              //   imagePath:
                                              //       ImageConstant.imgImage167,
                                              //   height: 30.v,
                                              //   width: 27.h,
                                              //   alignment: Alignment.topLeft, 
                                              //   // margin: EdgeInsets.only(left: 0),
                                              // ),
                                              
                                              
                                              SizedBox(  width: 1   .h), //بين الكلام والصورة
                                              Text(
                                                quizData[currentIndex]
                                                    ['choices'][index],
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  color: Colors
                                                      .black, 
                                                   fontWeight: FontWeight.bold, 

                                                ),
                                              ),
                                            ],
                                          ),
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
                              margin: EdgeInsets.only(top: 63.v,left: 15),
                              decoration: BoxDecoration( //ورا السؤال
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
                              margin: EdgeInsets.only(top: 79.v,left: 3),
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
                          Container(///new
                            height: 28.v,
                            width: 27.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(right:240.h, bottom:690, top: 30),
                            child: ElevatedButton(
                                onPressed: () {
                                final player = AudioPlayer();/// new
                                player.play(AssetSource('whatWord.mp3'));/// new
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
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage23114x111,//النجمة
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
                                                    Speakskill()), //next page فيه حركه غبيه هنا هل بنقعد نكرر لكل مهارة الفيدباك ؟؟؟؟
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
                                                    Speakskill()), //next page فيه حركه غبيه هنا هل بنقعد نكرر لكل مهارة الفيدباك ؟؟؟؟
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


