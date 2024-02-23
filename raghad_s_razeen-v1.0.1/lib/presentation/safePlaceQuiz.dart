import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/presentation/happyfeedback.dart';
import 'package:raghad_s_razeen/presentation/sadfeedback.dart';
import 'package:raghad_s_razeen/widgets/custom_icon_button.dart';
import 'package:raghad_s_razeen/core/app_export.dart';

class SafePlaceQuiz extends StatefulWidget {
  const SafePlaceQuiz({Key? key}) : super(key: key);

  @override
  _SafePlaceQuizState createState() => _SafePlaceQuizState();
}

class _SafePlaceQuizState extends State<SafePlaceQuiz> {
  List<Map<String, dynamic>> quizData = [
    {
      'imagePath': 'assets/images/room1.quiz1.png',
      'answer': false,
    },
    {
      'imagePath': 'assets/images/room2.quiz1.png',
      'answer': true,
    },
    {
      'imagePath': 'assets/images/room3.quiz1.png',
      'answer': false,
    },
  ];

  int currentIndex = 0;
  int correctAnswersCount = 0;///////////////
  

    void checkAnswer(bool userAnswer) {
    bool correctAnswer = quizData[currentIndex]['answer'];

    if (userAnswer == correctAnswer) {
    correctAnswersCount++;
  }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(userAnswer == correctAnswer ? 'إجابة صحيحة' : 'إجابة خاطئة',textAlign: TextAlign.center,),
          actions: [
            Center(
            child:TextButton(
              child: Text('موافق',style: TextStyle(fontSize: 18)),
             
              onPressed: () {
                    Navigator.of(context).pop();
                    setState(() {
                      currentIndex++;
                      if (currentIndex >= quizData.length) {
                        if (correctAnswersCount >= 2) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Happyfeedback()),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Sadfeedback()),
                          );
                        }
                      }
                    });
                  }
            ),),
          ],
        );
      },
    );
  }

  Widget buildQuizQuestion(int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          quizData[index]['imagePath'],
          height: 245.v,
          width: 317.h,
        ),
        SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.only(// شكل مالها فايده 
            left: 33.h,
            right: 39.h,
            bottom: 1,
          ),
        ),
        // Row(
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => checkAnswer(false),
              child: Image.asset(
                'assets/images/wrongICON.png',
                width: 108,
                height: 108,
              ),
            ),
            SizedBox(width: 30),// المسافه بينهم 
            InkWell(
              onTap: () => checkAnswer(true),
              child: Image.asset(
                'assets/images/rightICON.png',
                width: 98,
                height: 98,
                
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 50.v,// بين الصوره والسوال
                bottom: 200.v,// بين الصوره والسوال
              ),
            ),
          ],
        ),
      ],
    );
  }
  ///--------------------------------------------------------
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
                      height: SizeUtils.height, ///////////////////////
                      width: 394.h,
                      padding: EdgeInsets.only(
                        left: 32.h,
                        top: 100.v,
                        right: 32.h,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant
                                .Background, //خلفية .... لازم نرفعها عشان الشعار
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              margin: EdgeInsets.only(
                                top: 18.v,
                                right: 1.h,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 5.h,
                                vertical: 62.v,
                              ),
                              decoration:
                                  AppDecoration.outlinePrimary1.copyWith(
                                borderRadius: BorderRadiusStyle
                                    .roundedBorder33, ///////////////
                              ),
                              // child: Column(
                              //   mainAxisSize: MainAxisSize.min,
                              //   mainAxisAlignment: MainAxisAlignment.end,



                                /////الملكههههههه
                               child: currentIndex < quizData.length
                                  ? buildQuizQuestion(currentIndex)
                                  : Text('Quiz Completed!'),// فيه شي هنا بعد 




                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Container(
                              height: 58.v,
                              width: 301.h,
                              margin: EdgeInsets.only(top: 10.v),
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
                              margin: EdgeInsets.only(top: 28.v),
                              // decoration: AppDecoration.outlinePrimary1,////////////////
                              child: Text(
                                "                 هل المكان مناسب لجدك؟",
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage167, ////// الصوت
                            height: 28.v,
                            width: 27.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 32.h),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage23, //النجمه
                    height: 114.v,
                    width: 94.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 77.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgScreenshot2023, //رزين
                    height: 180.v,
                    width: 133.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(bottom: 42.v),
                  ),
                ],
              ),
            ),
          ),
        ), 
      ),
    );
  }
}

