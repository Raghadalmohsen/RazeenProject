import 'package:flutter/material.dart';

import 'package:raghad_s_razeen/core/utils/image_constant.dart';

import 'package:raghad_s_razeen/core/utils/size_utils.dart';

import 'package:raghad_s_razeen/theme/app_decoration.dart';

import 'package:raghad_s_razeen/widgets/custom_image_view.dart';

import 'dart:math';

 

class MemoryGame extends StatefulWidget {

  const MemoryGame({Key? key}) : super(key: key);

 

  @override

  _MemoryGameState createState() => _MemoryGameState();

}

 

GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();

 

class _MemoryGameState extends State<MemoryGame> {

  List<String> _imagePaths = [

    'assets/images/mem1.png',

    'assets/images/mem2.png',

    'assets/images/mem3.png',

    'assets/images/mem4.png',

    'assets/images/mem1.png',

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

      showDialog(

        context: context,

      builder: (BuildContext context) {

        return AlertDialog(

          title: Text('أحسنت',textAlign: TextAlign.right,

            style: TextStyle(

              fontSize: 22,

            ),),

          content: Text('رائع لقد فزت وطابقت جميع الصور بنجاح  ',   textAlign: TextAlign.right,

            style: TextStyle(

              fontSize: 18,

             

             

            ),),

          actions: [

            Center(

              child: TextButton(

                onPressed: () {

                  Navigator.pop(context); // Close the dialog

                  Navigator.pop(context); // Navigate back to the previous screen

                },

                child: Text('موافق', style: TextStyle(fontSize: 18, color: Colors.blue)),

              ),

            ),

          ],

 

          );

        },

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