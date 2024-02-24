// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/happyfeedback.dart';
import 'package:raghad_s_razeen/presentation/sadfeedback.dart';

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
      'choices': ['                          ليس خطئي', '                         أنا اسف يا جدي'],
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
            MaterialPageRoute(builder: (context) => Happyfeedback()),
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Sadfeedback()),
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
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              width: 600,
                              margin: EdgeInsets.only(
                                top: 30.v,
                                right: 1.h,
                                left: 1,
                                bottom: 88,
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
                                    width: 394.h,
                                    height: 300.h,
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
                                              CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgImage167,
                                                height: 28.v,
                                                width: 27.h,
                                                alignment: Alignment.topLeft, 
                                                margin: EdgeInsets.only(left: 0),
                                              ),
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
                              margin: EdgeInsets.only(top: 10.v),
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
                              margin: EdgeInsets.only(top: 26.v),
                              // decoration: AppDecoration.outlinePrimary1, //ينحذف
                              child: Text(
                                "           ما الكلمة المناسبة لهذا الموقف؟",
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage167, //الصوت عند السؤال
                            height: 28.v,
                            width: 27.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 18.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage23114x111,//النجمة
                    height: 114.v,
                    width: 111.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 62.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgScreenshot2023,//رزين
                    height: 180.v,
                    width: 133.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(bottom: 42.v,left: 1),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Common widget
  // Widget _buildDoctorReviews(
  //   BuildContext context, {
  //   required String widget,
  // }) {
  //   return SizedBox(
  //     height: 74.v,
  //     width: 282.h,
  //     child: Stack(
  //       alignment: Alignment.topLeft,
  //       children: [
  //         Align(
  //           alignment: Alignment.bottomCenter,
  //           child: Container(
  //             margin: EdgeInsets.only(left: 1.h),
  //             padding: EdgeInsets.symmetric(vertical: 2.v),
  //             decoration: AppDecoration.outlinePrimary12.copyWith( //خلفية الاجابات
  //               borderRadius: BorderRadiusStyle.roundedBorder5,
  //             ),
  //             child: Column(
  //               mainAxisSize: MainAxisSize.min,
  //               children: [
  //                 SizedBox(height: 15.v),
  //                 Container(
  //                   width: 268.h,
  //                   margin: EdgeInsets.only(left: 13.h),
  //                   child: Text(
  //                     widget,
  //                     maxLines: null,
  //                     overflow: TextOverflow.ellipsis,
  //                     style: theme.textTheme.titleMedium!.copyWith(
  //                       color: appTheme.blueGray700,
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         ),
  //         CustomImageView(
  //           imagePath: ImageConstant.imgImage167,//الصوت
  //           height: 28.v,
  //           width: 27.h,
  //           alignment: Alignment.topLeft,
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
