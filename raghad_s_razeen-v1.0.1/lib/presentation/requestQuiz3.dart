import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/requestskill.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; 
import 'package:firebase_auth/firebase_auth.dart'; 


class RequestQuiz3 extends StatefulWidget {
  const RequestQuiz3({Key? key})
      : super(
          key: key,
        );

  _RequestQuiz3State createState() => _RequestQuiz3State();
}

class _RequestQuiz3State extends State<RequestQuiz3> {
  late List<ItemModel> items;
  late List<ItemModel> items2;

  var player = AudioCache(); 

  
  late bool gameOver;

  
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
    'skills.skill2.isQuizCompleted': true,
  });
}
      print('Quiz completion status updated in Firestore');
    } catch (e) {
      print('Failed to update quiz completion status in Firestore: $e');
    }
  }
}

  @override
  void initState() {
    super.initState();
    initGame();
    navigateToFeedbackScreen(); /////////////////////////////
  }

  initGame() {
    gameOver = false;
    items = [
      ItemModel(name: 'water3', img: 'assets/images/water3.png',value: 'grandfather'), //غيرت الفاليو عشان يتحركون كلهم
      ItemModel(name: 'mesbahaq3', img: 'assets/images/mesbahaq3.png', value: 'null'),
      ItemModel(name: 'radio', img: 'assets/images/radio.png', value: 'null'),
    ];
    items2 = [
      ItemModel(name: 'grandfather',img: 'assets/images/grandfather.png',value: 'grandfather' ),
    ];
    items.shuffle();
    items2.shuffle();
  }


  void navigateToFeedbackScreen() {
    if (items.length == 2) {
        updateUserQuizCompletionStatus(); ///////////////////////////level
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Happy()),// new class
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (items.length == 2) 
    ;
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
                                              items.remove(receivedItem);
                                              items2.remove(receivedItem);
                                              // item.accepting = false;
                                             
                                            });

                                            item.accepting = false;
                                            // score++;
                                            final player = AudioPlayer();/// new
                                            player.play(AssetSource('true.wav'));/// new

                                          } else {
                                            setState(() {
                                              item.accepting = false;
                                              final player = AudioPlayer();// new 1
                                              player.play(AssetSource('false.wav'));// new 2
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
                                          // height: 180,
                                          // width: 160,
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
                      Container(///new
                                      height: 28.v,
                                      width: 27.h,
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(left:120.h, bottom:155, top: 250),
                                      child: ElevatedButton(
                                onPressed: () {
                                final player = AudioPlayer();/// new
                                player.play(AssetSource('bring_water.mp3'));/// new
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
                                final player = AudioPlayer();/// new
                                player.play(AssetSource('Q_Order.mp3'));/// new
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
      {required this.name,required this.value,required this.img,this.accepting = false});
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
                                                   Requestskill(request:'request')), //next page فيه حركه غبيه هنا هل بنقعد نكرر لكل مهارة الفيدباك ؟؟؟؟
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
