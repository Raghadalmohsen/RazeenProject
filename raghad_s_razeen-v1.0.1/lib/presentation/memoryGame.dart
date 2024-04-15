import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/utils/image_constant.dart';
import 'package:raghad_s_razeen/core/utils/size_utils.dart';
import 'package:raghad_s_razeen/presentation/medalsFeedback.dart';
import 'package:raghad_s_razeen/presentation/razeenmap.dart';
import 'package:raghad_s_razeen/theme/app_decoration.dart';
import 'package:raghad_s_razeen/widgets/custom_image_view.dart';
import 'dart:math';
import 'package:raghad_s_razeen/theme/theme_helper.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
 

class MemoryGame extends StatefulWidget {
  const MemoryGame({Key? key}) : super(key: key);
  @override
  _MemoryGameState createState() => _MemoryGameState();
}
GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();
class _MemoryGameState extends State<MemoryGame> {

  List<String> _imagePaths = [
    'assets/images/readC.jpeg',
    'assets/images/mem2.png',
    'assets/images/mem3.png',
    'assets/images/mem4.png',
    'assets/images/readC.jpeg',
    'assets/images/mem2.png',
    'assets/images/mem3.png',
    'assets/images/mem4.png',

  ];

  List<bool> _flipped = [];
  int _prevIndex = -1;
  bool _lock = false;

  @override
  void initState() {
    super.initState();
    _initData();
  }


  void _initData() {
    var rng = Random();
    List<String> imagePaths =

        List.generate(8, (index) => _imagePaths[index % 4]);

    imagePaths.shuffle(rng);

    List<bool> flipped = List.filled(8, false);

 

    setState(() {

      _imagePaths = imagePaths;

      _flipped = flipped;

    });

  }

 

  void _checkGameFinished() {

    if (_flipped.every((flipped) => flipped)) {

       Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        memoryFeedback()),  
              ); 


    }

  }

 

  Future<void> _onCardTap(int index) async {

    if (_lock || _flipped[index]) return;

 

    setState(() {

      _flipped[index] = true;

    });

 

    if (_prevIndex == -1) {

      _prevIndex = index;

    } else {

      _lock = true;

      await Future.delayed(Duration(seconds: 1));

 

      if (_imagePaths[_prevIndex] != _imagePaths[index]) {

        setState(() {

          _flipped[_prevIndex] = false;

          _flipped[index] = false;

        });

      } else {

        _checkGameFinished();

      }

 

      _prevIndex = -1;

      _lock = false;

    }

  }

 

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

  height: SizeUtils.height,

  width: SizeUtils.width,

                  border: Border.all(),

                  alignment: Alignment.center,

                ),

                Align(

                  alignment: Alignment.bottomCenter,

                  child: Container(

                    height: 794,

                    width: double.maxFinite,

                    margin: EdgeInsets.only(bottom: 5),

                    child: Stack(

                      alignment: Alignment.topRight,

                      children: [

                        Align(

                          alignment: Alignment.center,

                          child: Padding(

                            padding: EdgeInsets.only(

                                left: 20, right: 29, bottom: 65),

                            child: Column(

                              mainAxisSize: MainAxisSize.min,

                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: [

                                SizedBox(height: 75),

                                Container(

                                  margin: EdgeInsets.only(left: 6, top: 50),

                                  padding: EdgeInsets.symmetric(

                                    horizontal: 22,

                                    vertical: 90,

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

                                      child: GridView.builder(

                                        gridDelegate:

                                            SliverGridDelegateWithFixedCrossAxisCount(

                                          crossAxisCount: 3,

                                          mainAxisSpacing: 4.0,

                                          crossAxisSpacing: 4.0,

                                        ),

                                        itemCount: _imagePaths.length,

                                        itemBuilder: (context, index) {

                                          return GestureDetector(

                                            onTap: () => _onCardTap(index),

                                            child: Card(

                                              color: _flipped[index]

                                                  ? Color.fromARGB(255, 168, 177, 232)

                                                  : Color.fromARGB(255, 168, 177, 232),

                                              child: Center(

                                                child: _flipped[index]

                                                    ? Image.asset(

                                                        _imagePaths[index])

                                                    : null,

                                              ),

                                            ),

                                          );

                                        },

                                      ),

                                    ),

                                  ),

                                ),

                                Container(

                                  width: MediaQuery.of(context).size.width *

                                      0.15,

                                ),

                                Expanded(

                                  child: SingleChildScrollView(

                                    child: Column(

                                      children: [],

                                    ),

                                  ),

                                ),

                              ],

                            ),

                          ),

                        ),

                        Align

(

                          alignment: Alignment.topCenter,

                          child: Container(

                            height: 58,

                            width: 340,

                            margin: EdgeInsets.only(top: 120),

                            decoration: BoxDecoration(

                              color: Color.fromARGB(255, 248, 244, 195),

                              borderRadius: BorderRadius.circular(

                                29,

                              ),

                            ),

                          ),

                        ),

                        Align(

                          alignment: Alignment.topCenter,

                          child: Container(

                            width: 256,

                            margin: EdgeInsets.only(top: 133),

                            child: Text(

                              "     قم بمطابقة الصور المتشابهة",

                              maxLines: null,

                              overflow: TextOverflow.ellipsis,

                              style: TextStyle(fontSize: 20, color: Colors.black),

                            ),

                          ),

                        ),

                        CustomImageView(

                          imagePath: ImageConstant.imgImage167,

                          height: 28,

                          width: 27,

                          alignment: Alignment.topLeft,

                          margin: EdgeInsets.only(left: 45, top: 115),

                        ),

                      ],

                    ),

                  ),

                ),

                CustomImageView(

                  imagePath: ImageConstant.imgImage23,

                  height: 114,

                  width: 94,

                  alignment: Alignment.topRight,

                  margin: EdgeInsets.only(top: 115),

                ),

                 CustomImageView(

                  imagePath: ImageConstant.imgScreenshot2023, //رزين

                  height: 180.v,

                  width: 133.h,

                  alignment: Alignment.bottomLeft,

                  margin: EdgeInsets.only(

                    bottom: 20.v,

                  ),

                 ),

              ],

            ),

          ),

        ),

      ),

    );

  }

}


//feedback

class memoryFeedback extends StatefulWidget {
  memoryFeedback({Key? key}) : super(key: key);

  @override
  _memoryFeedbackState createState() => _memoryFeedbackState();
}

class _memoryFeedbackState extends State<memoryFeedback> {
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
                  Map<String, dynamic> skill3Data =
                      skillsData['skill3'] as Map<String, dynamic>;

                  setState(() {
                     visitCount = skill3Data['visit'] ?? 0;
                  });
                }
              }

              visitCount++; 

              await FirebaseFirestore.instance
                  .collection('users')
                  .doc(userId)
                  .update({
                'skills.skill3.visit': visitCount,
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
