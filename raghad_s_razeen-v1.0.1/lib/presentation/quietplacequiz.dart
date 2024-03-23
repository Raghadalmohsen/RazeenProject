import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/quietplaceskill.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:raghad_s_razeen/presentation/happyfeedback.dart';
import 'package:raghad_s_razeen/presentation/sadfeedback.dart';
import 'package:audioplayers/audioplayers.dart';

class Quietplacequiz extends StatefulWidget {
  const Quietplacequiz({Key? key})
      : super(
          key: key,
        );     

  _QuietplacequizState createState() => _QuietplacequizState();
}

class _QuietplacequizState extends State<Quietplacequiz> {
  late List<ItemModel> items;
  late List<ItemModel> items2;

  var player = AudioCache(); 

  late int score;
  late bool gameOver;

  @override
  void initState() {
    super.initState();
    initGame();
    navigateToFeedbackScreen(); /////////////////////////////
  }

  // @override
  // void initState() {
  //   super.initState();
  //   initGame();
  // }
  //   @override
  // void initState() {
  //   super.initState();
  //   // Initialize the game
  //   initGame();
  //   // Check if the game is over
  //   checkGameOver();
  // }

  initGame() {
    gameOver = false;
    score = 0;
    items = [
      ItemModel(name: 'draw',value: 'notnoise',img: 'assets/images/draw.png'), //غيرت الفاليو عشان يتحركون كلهم
      ItemModel(name: 'tv', img: 'assets/images/tv.png', value: 'noise'),
      ItemModel(name: 'reading', img: 'assets/images/reading.png', value: 'notnoise'),
      ItemModel(name: 'sony', img: 'assets/images/sony.png', value: 'noise'),
    ];
    items2 = [
      ItemModel(name: 'notnoise',value: 'notnoise',img: 'assets/images/notnoise.png'),
      ItemModel(name: 'nosie', img: 'assets/images/noise.png', value: 'noise'),
    ];
    items.shuffle();
    items2.shuffle();// لو نبي حجم البوكسات يثبت نشيله 
  }

////////
  // void checkGameOver() {
  //   if (items.length == 0) {
  //     setState(() {
  //       // Navigate to the appropriate feedback screen based on the score
  //       if (score >= 2) {
  //         Future.delayed(Duration.zero, () {
  //           Navigator.push(
  //             context,
  //             MaterialPageRoute(builder: (context) => Happyfeedback()),
  //           );
  //         });
  //       } else {
  //         Future.delayed(Duration.zero, () {
  //           Navigator.push(
  //             context,
  //             MaterialPageRoute(builder: (context) => Sadfeedback()),
  //           );
  //         });
  //       }
  //     });
  //   }
    
  // }

  //////////////////////////////
  void navigateToFeedbackScreen() {
     if (items.length == 0) {

  if (score >= 2) {// delete it 
    Future.delayed(Duration(seconds: 0), () {////////////////////////// timer 
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Happy()),// new class 
      );
    });
  // } else {
  //   Future.delayed(Duration(seconds: 0), () {
  //     Navigator.push(
  //       context,
  //       MaterialPageRoute(builder: (context) => Sadfeedback()),// we will delete it 
  //     );
  //   });
  }}
}

  
  
  @override
  Widget build(BuildContext context) {
    if (items.length == 0) gameOver = true;
    return Scaffold(
      body: SingleChildScrollView(
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
                    alignment: Alignment.topCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 80.v,
                            right: 1.h,
                            bottom: 120.v,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 4.h,
                            vertical: 30.v,
                          ),
                          decoration: AppDecoration.outlinePrimary1.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder33,
                          ),
                          child: Column(
                            children: <Widget>[
                              if (!gameOver)
                                Row(
                                  children: <Widget>[
                                    Column(
                                        children: items.map((
                                      item,
                                    ) {
                                      return Container(
                                        margin: const EdgeInsets.all(8.0),
                                        child: Draggable<ItemModel>(
                                          data: item,
                                          child: Container(
                                              height: 100,
                                              width: 100,
                                              child: (Image.asset(item.img))),
                                          feedback: Container(
                                              height: 100,
                                              width: 100,
                                              child: (Image.asset(item.img))),
                                          childWhenDragging: Container(),
                                        ),
                                      );
                                    }).toList()),
                                    Spacer(),


                                    Column(// الجهه الثانيه 
                                        children: items2.map((item) {
                                      return DragTarget<ItemModel>(
                                        onAccept: (receivedItem) { // لما يوصل المكان الصح وش يصير 
                                          if (item.value ==
                                              receivedItem.value) {
                                            setState(() {
                                              items.remove(receivedItem);
                                              items2.remove(receivedItem);
                                              // item.accepting = false;
                                              // score++; // /////// ما عندنا 
                                            });

                                            item.accepting = false;
                                            score++;// 
                                            final player = AudioPlayer();/// new
                                            player.play(AssetSource('true.wav'));/// new


                                          } else {
                                            setState(() {
                                              score--;// new
                                              item.accepting = false;
                                              final player = AudioPlayer();// new 1
                                              player.play(AssetSource('false.wav'));// new 2

                                            });
                                          }
                                          navigateToFeedbackScreen(); //////////// جديده

                                        },
                                        
                                         onWillAccept: (receivedItem) {
                                          setState(() {
                                            item.accepting = true;
                                          });
                                          return true;
                                        },
                                        onLeave: (receivedItem) {
                                          setState(() {
                                            item.accepting = false;
                                          });
                                        },
                                        // onWillAccept: (receivedItem) {
                                        //   setState(() {
                                        //     item.accepting = true;
                                        //   });
                                        //   return true;
                                        // },
                                        builder: (context, acceptedItems,
                                                rejectedItem) =>
                                            Container(
                                           color: item.accepting
                                              ? Color.fromARGB(14, 255, 254, 254)///////////////
                                              : Colors.transparent,
                                          // height: 180,
                                          // width: 160,
                                          height: item.value == 'notnoise'
                                              ? 190
                                              : 179, //هنا مقاس البوكسات
                                          width: 160,
                                          alignment: Alignment.center,
                                          margin: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            //غيرته
                                            item.img,
                                            height: item.value == 'notnoise'
                                                ? 190
                                                : 179, //وهنا برضو
                                            width: 160,
                                          ),
                                        ),
                                      );
                                    }).toList()),
                                  ],
                                ),

                              //                               if (gameOver) {  checkGameOver();
                              // },
                              //   if (items.length == 0) {
                              //     setState(() {
                              //       if (score >= 2) {
                              //         Future.delayed(Duration.zero, () {
                              //           Navigator.push(
                              //             context,
                              //             MaterialPageRoute(builder: (context) => Happyfeedback()),
                              //           );
                              //         });
                              //       } else {
                              //         Future.delayed(Duration.zero, () {
                              //           Navigator.push(
                              //             context,
                              //             MaterialPageRoute(builder: (context) => Sadfeedback()),
                              //           );
                              //         });
                              //       }
                              //     });
                              //   }
                              // }
                              // if (gameOver) ////////////////////////////////////////
                              //     setState(() {
                              //         if (items.length == 0) { //new
                              //         if (score >= 2) {
                              //           Future.delayed(Duration.zero, () {
                              //             Navigator.push(
                              //               context,
                              //               MaterialPageRoute(builder: (context) => Happyfeedback()),
                              //             );
                              //           });
                              //         } else {
                              //           Future.delayed(Duration.zero, () {
                              //             Navigator.push(
                              //               context,
                              //               MaterialPageRoute(builder: (context) => Sadfeedback()),
                              //             );
                              //           });
                              //         }
                              //       }
                              //     });                                // ElevatedButton(
                              //   onPressed: () {
                              //     if (score >= 2) {
                              //       Navigator.push(
                              //         context,
                              //         MaterialPageRoute(
                              //             builder: (context) =>
                              //                 Happyfeedback()),
                              //       );
                              //     } else {
                              //       Navigator.push(
                              //         context,
                              //         MaterialPageRoute(
                              //             builder: (context) =>
                              //                 Sadfeedback()),
                              //       );
                              //     }
                              //   },
                              //   child: Text('Submit'),
                              // ),
                              // if (gameOver) Center()
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 58.v,
                          width: 301.h,
                          margin: EdgeInsets.only(top: 65.v),
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
                          margin: EdgeInsets.only(top: 80.v,left: 30),
                          // decoration: AppDecoration.outlinePrimary1,////////////////
                          child: Text(
                            "             ضع الشكل بالمكان المناسب  ",////
                            maxLines: null,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.titleMedium,
                          ),
                        ),
                      ),
                      // CustomImageView(
                      //   imagePath: ImageConstant.imgImage167, ////// الصوت
                      //   height: 28.v,
                      //   width: 27.h,
                      //   alignment: Alignment.topLeft,
                      //   margin: EdgeInsets.only(left: 32.h, top: 55),
                      // ),
                      Container(///new
                            height: 28.v,
                            width: 27.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(right:230.h, bottom:640, top: 55),
                            child: ElevatedButton(
                                onPressed: () {
                                final player = AudioPlayer();/// new
                                player.play(AssetSource('Q_Order.mp3'));/// new
                                },
                                style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.black,
                              elevation: 0,
                                ),//end new
                            
                          child: Image.asset(ImageConstant.imgImage164))),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage23, //النجمه
                height: 114.v,
                width: 94.h,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 120.v),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgScreenshot2023, //رزين
                height: 180.v,
                 width: 125.h,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(
                  bottom: 10.v,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemModel {
  final String name;
  final String value;
  final String img;
  bool accepting;

  ItemModel( {required this.name,required this.value,required this.img,this.accepting = false});
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
                                          height: 508.v,
                                          width: 382.h,
                                          alignment: Alignment.topLeft,
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
                                                    Quietplaceskill()), //next page فيه حركه غبيه هنا هل بنقعد نكرر لكل مهارة الفيدباك ؟؟؟؟
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
