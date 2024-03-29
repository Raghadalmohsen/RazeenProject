import 'package:raghad_s_razeen/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_floating_button.dart';
//
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//

//
class Medals extends StatefulWidget {
  Medals({Key? key}) : super(key: key);

  @override
  _MedalsState createState() => _MedalsState();
}

//
class _MedalsState extends State<Medals> {
  Map<String, bool> gameCompletionStatus = {
    'skill1': false,
    'skill2': false,
    'skill3': false,
    'skill4': false,
    'skill5': false,
  };
//
  @override
  void initState() {
    super.initState();
    // Call a function to retrieve the game completion status from Firestore
    retrieveGameCompletionStatus();
  }

  ///

  void retrieveGameCompletionStatus() async {
    // Get the currently authenticated user
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      String userId = user.uid;

      // Retrieve the game completion status from Firestore
      try {
        DocumentSnapshot<Map<String, dynamic>> snapshot =
            await FirebaseFirestore.instance
                .collection('users')
                .doc(userId)
                .get();

        // Update the gameCompletionStatus map based on the Firestore data
        Map<String, dynamic>? userData = snapshot.data();
        if (userData != null) {
          userData['skills'].forEach((key, value) {
            if (value['isGameCompleted'] == true) {
              gameCompletionStatus[key] = true;
            }
          });

          // Refresh the UI with the updated completion status
          setState(() {});
        }
      } catch (e) {
        print('Failed to retrieve game completion status: $e');
      }
    }
  }

  ///

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 400.h,
          decoration: AppDecoration.outlinePrimary,
          // child: SingleChildScrollView(
          child: SizedBox(
            // height: SizeUtils.height,
            height: 795,
            width: 394.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SingleChildScrollView(
                    //for overflow
                    physics: NeverScrollableScrollPhysics(),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 14.h,
                        vertical: 98.v,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.BGMedal, //خلفية
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 45.v),
                          Container(
                            margin: EdgeInsets.only(
                              left: 8.h,
                              right: 11.h,
                              top: 50,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 17.h,
                              vertical: 98.v,
                            ),
                            // decoration: AppDecoration.outlineBlack9001.copyWith(
                            //   borderRadius: BorderRadiusStyle.roundedBorder35,
                            // ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 19.v),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ////////////////////////////////1 medal
                                    // CustomImageView(
                                    //   imagePath: ImageConstant.medall,
                                    //   height: 94.adaptSize,
                                    //   width: 94.adaptSize,
                                    //   radius: BorderRadius.circular(
                                    //     47.h,
                                    //   ),),
                                     Container(
                                          height: 94.v,
                                          width: 94.h,
                                          clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: Color.fromARGB(137, 255, 255, 255),
                                      ),
                                    child: gameCompletionStatus['skill1'] != null &&
                                            gameCompletionStatus['skill1']!
                                        ? Image.asset(
                                            ImageConstant.medall,
                                            fit: BoxFit.cover,
                                            height: 94.adaptSize,
                                            width: 94.adaptSize,
                                          )
                                        : ColorFiltered(
                                            colorFilter: ColorFilter.mode(
                                                Color.fromARGB(151, 205, 205, 205),
                                                BlendMode.saturation),
                                            child: Image.asset(
                                              ImageConstant.medall,
                                              fit: BoxFit.cover,
                                              height: 94.adaptSize,
                                              width: 94.adaptSize,
                                            ),
                                          ),),

                                    // ),
                                    //         ElevatedButton(
                                    //           onPressed: gameCompletionStatus[ 'skill1'] != null && gameCompletionStatus['skill1']! ? () {
                                    //                   // Handle the button press
                                    //                 }
                                    //               : null,
                                    //            style: ElevatedButton.styleFrom(
                                    //                     backgroundColor: Colors.transparent,
                                    //                     foregroundColor: const Color.fromARGB(0, 0, 0, 0),
                                    //                     elevation: 0,
                                    //                     side: const BorderSide(
                                    //                       width: 0,
                                    //                 color:
                                    //                     Color.fromARGB(0, 244, 67, 54),
                                    //               )),
                                    //           // child: Image.asset(
                                    //           //   ImageConstant.medalP,
                                    //           //   fit: BoxFit.cover,
                                    //           //      height: 94.adaptSize,
                                    //           // width: 94.adaptSize,

                                    //           // ),
                                    //           child: ColorFiltered( colorFilter: gameCompletionStatus[ 'skill1'] !=  null && gameCompletionStatus['skill1']! ? null
                                    // : ColorFilter.mode( Colors.grey, BlendMode .saturation),
                                    //             child: Image.asset(
                                    //               ImageConstant.medalP,
                                    //               fit: BoxFit.cover,
                                    //               height: 94.adaptSize,
                                    //               width: 94.adaptSize,
                                    //             ),
                                    //           ),
                                    //         ),
                                    // ElevatedButton(
                                    //   onPressed: gameCompletionStatus[
                                    //                   'skill2'] !=
                                    //               null &&
                                    //           gameCompletionStatus['skill2']!
                                    //       ? () {
                                    //           // Handle the button press
                                    //         }
                                    //       : null,
                                    //   style: ElevatedButton.styleFrom(
                                    //     backgroundColor: Colors.transparent,
                                    //     foregroundColor:
                                    //         const Color.fromARGB(0, 0, 0, 0),
                                    //     elevation: 0,
                                    //     shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.circleBorder30),
                                    //   ),
                                    // Container(
                                    //   width: 94,
                                    //   height: 94,
                                    //   clipBehavior: Clip.antiAlias,
                                    //   decoration: const BoxDecoration(
                                    //     shape: BoxShape.circle,
                                    //   ),
                                      // gameCompletionStatus['skill1'] !=
                                      //             null &&
                                      //         gameCompletionStatus['skill1']!
                                      //     ? Image.asset(
                                      //         ImageConstant.medall,
                                      //         fit: BoxFit.cover,
                                      //         height: 94.adaptSize,
                                      //         width: 94.adaptSize,
                                      //       )
                                      //     : ColorFiltered(
                                      //         colorFilter: ColorFilter.mode(
                                      //             Color.fromARGB(
                                      //                 205, 205, 205, 205),
                                      //             BlendMode.saturation),
                                      //         child: Image.asset(
                                      //           ImageConstant.medall,
                                      //           fit: BoxFit.cover,
                                      //           height: 94.adaptSize,
                                      //           width: 94.adaptSize,
                                      //         ),
                                      //       ),
                                    

                                    //

                                    // CustomImageView(
                                    //   imagePath: ImageConstant.medall, //2 madel
                                    //   height: 94.adaptSize,
                                    //   width: 94.adaptSize,
                                    //   radius: BorderRadius.circular(
                                    //     47.h,
                                    //   ),
                                    // ),
                                    ////////////////////////////////////MEDAL2
                                    Container(
                                          height: 94.v,
                                          width: 94.h,
                                          clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: Color.fromARGB(137, 255, 255, 255),
                                      ),
                                    child: gameCompletionStatus['skill2'] != null &&
                                            gameCompletionStatus['skill2']!
                                        ? Image.asset(
                                            ImageConstant.medall,
                                            fit: BoxFit.cover,
                                            height: 94.adaptSize,
                                            width: 94.adaptSize,
                                          )
                                        : ColorFiltered(
                                            colorFilter: ColorFilter.mode(
                                                Color.fromARGB(151, 205, 205, 205),
                                                BlendMode.saturation),
                                            child: Image.asset(
                                              ImageConstant.medall,
                                              fit: BoxFit.cover,
                                              height: 94.adaptSize,
                                              width: 94.adaptSize,
                                            ),
                                          ),),
                                    //
                                    ////////////////////////////////////MEDAL3
                                    // CustomImageView(
                                    //   imagePath: ImageConstant.medall, //3 medal
                                    //   height: 94.adaptSize,
                                    //   width: 94.adaptSize,
                                    //   radius: BorderRadius.circular(
                                    //     47.h,
                                    //   ),
                                    // ),
                                     Container(
                                          height: 94.v,
                                          width: 94.h,
                                          clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: Color.fromARGB(137, 255, 255, 255),
                                      ),
                                    child: gameCompletionStatus['skill3'] != null &&
                                            gameCompletionStatus['skill3']!
                                        ? Image.asset(
                                            ImageConstant.medall,
                                            fit: BoxFit.cover,
                                            height: 94.adaptSize,
                                            width: 94.adaptSize,
                                          )
                                        : ColorFiltered(
                                            colorFilter: ColorFilter.mode(
                                                Color.fromARGB(151, 205, 205, 205),
                                                BlendMode.saturation),
                                            child: Image.asset(
                                              ImageConstant.medall,
                                              fit: BoxFit.cover,
                                              height: 94.adaptSize,
                                              width: 94.adaptSize,
                                            ),
                                          ),),
                                  ],
                                ),
                                SizedBox(height: 37.v),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // CustomIconButton(
                                    //   height: 94.adaptSize,
                                    //   width: 94.adaptSize,
                                    //     ////////////////////////////////////MEDAL4

                                    //   child: CustomImageView(
                                    //     imagePath:
                                    //         ImageConstant.medall, //medal4
                                    //   ),
                                    // ),
                                     Container(
                                          height: 94.v,
                                          width: 94.h,
                                          clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: Color.fromARGB(137, 255, 255, 255),
                                      ),
                                    child: gameCompletionStatus['skill4'] != null &&
                                            gameCompletionStatus['skill4']!
                                        ? Image.asset(
                                            ImageConstant.medall,
                                            fit: BoxFit.cover,
                                            height: 94.adaptSize,
                                            width: 94.adaptSize,
                                          )
                                        : ColorFiltered(
                                            colorFilter: ColorFilter.mode(
                                                Color.fromARGB(151, 205, 205, 205),
                                                BlendMode.saturation),
                                            child: Image.asset(
                                              ImageConstant.medall,
                                              fit: BoxFit.cover,
                                              height: 94.adaptSize,
                                              width: 94.adaptSize,
                                            ),
                                          ),),
                                          ////////////////////////////////////MEDAL5
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.h),
                                      // child: CustomIconButton(
                                      //   height: 94.adaptSize,
                                      //   width: 94.adaptSize,
                                      //     ////////////////////////////////////MEDAL5

                                      //   child: CustomImageView(
                                      //     imagePath:
                                      //         ImageConstant.medall, //medal5
                                      //   ),
                                      // ),
                                      child:  Container(
                                          height: 94.v,
                                          width: 94.h,
                                          clipBehavior: Clip.antiAlias,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle, color: Color.fromARGB(137, 255, 255, 255),
                                      ),
                                    child: gameCompletionStatus['skill5'] != null &&
                                            gameCompletionStatus['skill5']!
                                        ? Image.asset(
                                            ImageConstant.medall,
                                            fit: BoxFit.cover,
                                            height: 94.adaptSize,
                                            width: 94.adaptSize,
                                          )
                                        : ColorFiltered(
                                            colorFilter: ColorFilter.mode(
                                                Color.fromARGB(151, 205, 205, 205),
                                                BlendMode.saturation),
                                            child: Image.asset(
                                              ImageConstant.medall,
                                              fit: BoxFit.cover,
                                              height: 94.adaptSize,
                                              width: 94.adaptSize,
                                            ),
                                          ),),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 85.v),
                        ],
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgScreenshot2023, //رزين
                  height: 180.v,
                  width: 129.h,
                  margin: EdgeInsets.only(
                    top: 300.v,
                    right: 5.h,
                    bottom: 15,
                  ),
                ),
              ],
            ),
          ),
          // ),
        ),
        extendBody: true,
        bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
