import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/razeenmap.dart';
import 'package:raghad_s_razeen/presentation/respectDiffQuiz.dart';
import 'package:raghad_s_razeen/presentation/safeplacestory.dart';
import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:firebase_auth/firebase_auth.dart';


class Respectdiffskill extends StatefulWidget {

  final String respectdiff; 

  Respectdiffskill({required this.respectdiff}); 

  @override
  _RespectdiffskillState createState() => _RespectdiffskillState();
}

class _RespectdiffskillState extends State<Respectdiffskill> {
  late bool isStoryCompleted = false; 
  late bool isQuizCompleted = false;
  late bool isGameCompleted = false;


  @override 
  void initState() {
    super.initState();
    fetchUserProgress();
  }


void fetchUserProgress() async {
  User? user = FirebaseAuth.instance.currentUser;

  if (user != null) {
    String userId = user.uid;
    print('Fetching user progress for user ID: $userId');

    DocumentSnapshot userSnapshot = await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .get();

    if (userSnapshot.exists) {
      print('User progress data: ${userSnapshot.data()}');

      Map<String, dynamic> userData = userSnapshot.data() as Map<String, dynamic>;
      Map<String, dynamic> skillsData = userData['skills'] as Map<String, dynamic>;
      Map<String, dynamic> skill5Data = skillsData['skill5'] as Map<String, dynamic>;

      setState(() {
        isStoryCompleted = skill5Data['isStoryCompleted'] ?? false;
        isQuizCompleted = skill5Data['isQuizCompleted'] ?? false;
        isGameCompleted = skill5Data['isGameCompleted'] ?? false;
      });
    } else {
      print('User progress document does not exist');
    }
  } else {
    print('User is not authenticated');
  }
}



void updateProgress() {
  FirebaseFirestore.instance
      .collection('users')
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .update({
    'skills.skill5.isStoryCompleted': isStoryCompleted,
    'skills.skill5.isQuizCompleted': isQuizCompleted,
    'skills.skill5.isGameCompleted': isGameCompleted,
  });
}

  void markStoryCompleted() {
    setState(() {
      isStoryCompleted = true;
    });
    updateProgress();
  }

  void markGameCompleted() {
    setState(() {
      isGameCompleted = true;
    });
    updateProgress();
  }

  
   @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true, // زر الرجوع
        appBar: AppBar(
          actions:<Widget>[
        IconButton(
            iconSize: 40,
            color: Color.fromARGB(255, 5, 0, 36),
            icon: Icon(Icons.arrow_forward),
            onPressed: () => Navigator.pop(context),
          ),

          ],
           backgroundColor: Color.fromARGB(0, 213, 204, 243),
          elevation: 0,
          leading: IconButton(  
             color: Color.fromARGB(0, 5, 0, 36),
          onPressed: (){},   
                   icon: Icon(Icons.arrow_forward),)
          ),
        

        extendBody: true,
        bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.BackgroundHouse, //خلفيه 
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            decoration: AppDecoration.outlinePrimary1.copyWith(
              border: Border.all(),
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SingleChildScrollView(//for overflow
                   physics: NeverScrollableScrollPhysics(),
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 2.h, 
                      top: 125.v, //مكان الاشياء
                     
                    ),

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildStackView(context),
                        SizedBox(height: 85.v),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 41.v),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 1.h),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 1.h,
                                        vertical: 14.v,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [

                                          Container(
                                          height: 200.v,
                                          width: 100.h,
                                          decoration: AppDecoration.outlinePrimary2
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder33,
                                            ),
                                          child: ElevatedButton(
                                             //////////////////////////////////////////game
                                            onPressed: isQuizCompleted?() {
                                               Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) =>  Razeenmap()),
                                        );
                                        markGameCompleted();
                                        }:null,
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.transparent,
                                                foregroundColor: const Color.fromARGB(0, 0, 0, 0),
                                                elevation: 0,
                                                side: const BorderSide(
                                                  width: 0,
                                                  color: Color.fromARGB(0, 244, 67, 54),
                                                  
                                                )),
                                            
                                            child:Image.asset(
                                              ImageConstant.play2,
                                              height: 500,
                                              width:500 ,
                                              )),//العب
                                            
                                            ),

                                 
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 15.v),
                                    CustomImageView(
                                      imagePath: ImageConstant.Arrow2, //سهم
                                      height: 93.v,
                                      width: 83.h,
                                      alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(
                                  left: 25.h,
                                  bottom: 60.v,),
                                    ),
                                  ],
                                ),
                              ),

                              Container(
                                margin: EdgeInsets.only(
                                  left: 5.h,
                                  top: 150.v,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6.h,
                                  vertical: 19.v,
                                ),
                           
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [

                                    Container(
                                          height: 200.v,
                                          width: 100.h,
                                         decoration: AppDecoration.outlinePrimary2
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder33,
                                            ),
                                          child: ElevatedButton(
                                           /////////////////////////////////////////////////////////quiz
                                            onPressed:isStoryCompleted? () {
                                               Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) =>  RespectDiffQuiz()),
                                        );
                                        }:null,
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.transparent,
                                                foregroundColor: Colors.black,
                                                elevation: 0,
                                                side: const BorderSide(
                                                  width: 1.0,
                                                  color: Color.fromARGB(0, 244, 67, 54),
                                                  
                                                )),
                                            
                                            child:Image.asset(ImageConstant.quiz2,
                                              height: 500,
                                              width:500 ,)),//الكويز
                                            
                                            ),

                       
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 11.h,
                                  bottom: 60.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        margin: EdgeInsets.only(left: 12.h),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5.h,
                                          vertical: 14.v,
                                        ),
                                     
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [

                                            Container(
                                          height: 200.v,
                                          width: 100.h,
                                    
                                           decoration: AppDecoration.outlinePrimary2
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder33,
                                            ),
                                          child: ElevatedButton(
                                            //////////////////////////////////////////////////////story
                                            onPressed: () { Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) =>  Safeplacestory()), ////////تتغير للقصة حقتها**
                                        );
                                         markStoryCompleted(); /////////
                                        },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.transparent,
                                                foregroundColor: Colors.black,
                                                elevation: 0,
                                                side: const BorderSide(
                                                  width: 1.0,
                                                  color: Color.fromARGB(0, 244, 67, 54),
                                                  
                                                )),
                                            
                                            child:Image.asset(ImageConstant.story2 ,
                                              height: 500,
                                              width:500 ,)),//القصة
                                            
                                            ),
                         
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5.v),
                                    CustomImageView(
                                      imagePath: ImageConstant.Arrow1, //سهم
                                      height: 84.v,
                                      width: 94.h,
                                       margin: EdgeInsets.only(
                                    left: 4.h,
                                    bottom: 25.v,),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    // ),
                  ),
                )),
                CustomImageView(
                  imagePath: ImageConstant.imgScreenshot2023, //رزين
                  height: 141.v,
                  width: 103.h,
                  margin: EdgeInsets.only(
                    top: 60.v,
                    right: 5.h,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 300.h,
                    margin: EdgeInsets.only(
                      top: 155.v,
                      right: 15.h,
                    ),
                    decoration: AppDecoration.outlinePrimary3,
                    child: Text(
                      "كيف أتقبل الاختلاف بيني وبين جدي؟",
                      maxLines: 1,
                       overflow: TextOverflow.ellipsis,
                      // style: theme.textTheme.titleMedium,
                      style:TextStyle(fontSize: 17,color: Colors.black),
                      

                      
                    ),
                  ),
                ),
                Container(///new
              height: 28.v,
              width: 27.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(right:300.h, bottom:590, top: 130),
              child: ElevatedButton(
              onPressed: () {
                 final player = AudioPlayer();/// new
                  player.play(AssetSource('How_Changes.mp3'));/// new
               },
               style: ElevatedButton.styleFrom(
               backgroundColor: Colors.transparent,
               foregroundColor: Colors.black,
               elevation: 0,
               ),
                            
              child: Image.asset(ImageConstant.imgImage164))),//end new
              ],
              // ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildStackView(BuildContext context) {
    return SizedBox(
      height: 71.v,
      width: 317.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 57.v,
              width: 317.h,
              decoration: BoxDecoration(
                color: appTheme.yellow100,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(29.h),
                  topRight: Radius.circular(28.h),
                  bottomLeft: Radius.circular(29.h),
                  bottomRight: Radius.circular(28.h),
                ),
                boxShadow: [
                  BoxShadow(
                    color: theme.colorScheme.primary,
                    spreadRadius: 2.h,
                    blurRadius: 2.h,
                    offset: Offset(
                      0,
                      4,
                    ),
                  ),
                ],
              ),
            ),
          ), 
        ],
      ),
    );
  }

  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
