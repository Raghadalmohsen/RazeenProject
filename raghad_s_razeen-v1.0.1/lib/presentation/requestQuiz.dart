import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/requestQuiz2.dart';

class RequestQuiz extends StatefulWidget {
  const RequestQuiz({Key? key})
      : super(
          key: key,
        );

  _RequestQuizState createState() => _RequestQuizState();
}

class _RequestQuizState extends State<RequestQuiz> {
        @override
void dispose() {
  player1.dispose();
  player2.dispose();
  player3.dispose();
  player4.dispose();
  super.dispose();
}
  // var player = AudioPlayer();
  late List<ItemModel> items;
  late List<ItemModel> items2;

  var player = AudioCache();//1
  var player1 = AudioPlayer();
  var player2 = AudioPlayer();
  var player3 = AudioPlayer();
  var player4 = AudioPlayer();

  late int score;
  late bool gameOver;

  @override
  void initState() {
    super.initState();
    initGame();
    navigateToFeedbackScreen(); /////////////////////////////
  }

  initGame() {
    gameOver = false;
    score = 0;
    items = [
      ItemModel(
          name: 'newspaper',
          value: 'grandfather',
          img: 'assets/images/newspaper.png'), //غيرت الفاليو عشان يتحركون كلهم
      ItemModel(
          name: 'medicineq3',
          img: 'assets/images/medicineq3.png',
          value: 'null'),
      ItemModel(
          name: 'remoteq3', img: 'assets/images/remoteq3.png', value: 'null'),
    ];
    items2 = [
      ItemModel(
          name: 'grandfather',
          value: 'grandfather',
          img: 'assets/images/grandfather.png'),
    ];
    items.shuffle();
    items2.shuffle();
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
    if (items.length == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RequestQuiz2()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (items.length == 2) ;
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
                                        margin: const EdgeInsets.only(top: 47),
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
                                    Column(
                                        children: items2.map((item) {
                                      return DragTarget<ItemModel>(
                                        onAccept: (receivedItem) {
                                          if (item.value ==
                                              receivedItem.value) {
                                            setState(() {  
                                            player1.stop();
                                            player2.stop();
                                            player3.stop();
                                            player4.stop();
                                              items.remove(receivedItem);
                                              items2.remove(receivedItem);

                                              // item.accepting = false;
                                              // player.play(AssetSource('true.wav'));
                                            });

                                            item.accepting = false;
                                            // score++;
                                            // final player = AudioPlayer();/// new
                                            // player.play(AssetSource('true.wav'));/// new
                                            player1.stop();
                                            player2.stop();
                                            player4.stop();
                                            player3.play(AssetSource('true.wav'));/// new


                                          } else {
                                            setState(() {
                                              item.accepting = false;
                                              // final player = AudioPlayer();// new 1
                                              player1.stop();
                                              player2.stop();
                                              player3.stop();
                                              player4.play(AssetSource('false.wav'));// new 2

                                            });
                                          }
                                          navigateToFeedbackScreen(); ////////////
                                        },
                                        onLeave: (receivedItem) {
                                          setState(() {
                                            item.accepting = false;
                                          });
                                        },
                                        onWillAccept: (receivedItem) {
                                          setState(() {
                                            item.accepting = true;
                                          });
                                          return true;
                                        },
                                        builder: (context, acceptedItems,
                                                rejectedItem) =>
                                            Container(
                                          color: item.accepting
                                              ? Color.fromARGB(14, 255, 254,
                                                  254) ///////////////
                                              : Colors.transparent,
                                          height: 233,
                                          width: 140,
                                          // height: item.value == 'grandfather'
                                          //     ? 216
                                          //     : 176,
                                          // width: item.value == 'grandfather'
                                          //     ? 130
                                          //     : 100,
                                          alignment: Alignment.center,
                                          margin:
                                              const EdgeInsets.only(top: 70),
                                          child: Image.asset(
                                            item.img,
                                            height: 233,
                                            width: 140,
                                            // height: item.value == 'grandfather'
                                            //     ? 216
                                            //     : 176, //وهنا برضو
                                            // width: item.value == 'grandfather'
                                            //     ? 130
                                            //     : 100,
                                          ),
                                        ),
                                      );
                                    }).toList()),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                      // CustomImageView(
                      //   imagePath: ImageConstant.imgImage167, ////// الصوت
                      //   height: 28.v,
                      //   width: 27.h,
                      //   alignment: Alignment.topRight,
                      //   margin: EdgeInsets.only(top: 250, right: 15),
                      // ),
                      Container(///new
                                      height: 28.v,
                                      width: 27.h,
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(left:120.h, bottom:155, top: 250),
                                      child: ElevatedButton(
                                onPressed: () {
                                // final player = AudioPlayer();/// new
                                // player.play(AssetSource('Newspaper.mp3'));/// new
                                player2.stop();
                                player3.stop();
                                player4.stop();
                                player1.play(AssetSource('Newspaper.mp3'));/// new
                                },
                                style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.black,
                              elevation: 0,
                                ),
                            
                          child: Image.asset(ImageConstant.imgImage164))),//end new
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
                          margin: EdgeInsets.only(top: 80.v),
                          // decoration: AppDecoration.outlinePrimary1,////////////////
                          child: Text(
                            "             ضع الشكل بالمكان المناسب",
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
                                      margin: EdgeInsets.only(right:240.h, bottom:590, top: 55),
                                      child: ElevatedButton(
                                onPressed: () {
                                // final player = AudioPlayer();/// new
                                // player.play(AssetSource('Q_Order.mp3'));/// new
                                player1.stop();
                                player3.stop();
                                player4.stop();
                                player2.play(AssetSource('Q_Order.mp3'));/// new
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
                imagePath: ImageConstant.imgImage23, //النجمه
                height: 114.v,
                width: 94.h,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 120.v),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgScreenshot2023, //رزين
                height: 180.v,
                 width: 130.h,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(
                  bottom: 20.v,
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

  ItemModel(
      {required this.name, required this.value,required this.img, this.accepting = false});
}
