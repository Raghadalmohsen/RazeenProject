import 'package:raghad_s_razeen/widgets/custom_icon_button.dart';

import '../frame_164_screen/widgets/grid1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_floating_button.dart';

class Frame164Screen extends StatelessWidget {
  //ميداليات
  Frame164Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  // @override
  // Widget build(BuildContext context) {
  //   return SafeArea(
  //     child: Scaffold(
  //       extendBodyBehindAppBar: true, //زر الرجوع
  //       appBar: AppBar(
  //         // 1. Back Arrow Icon
  //         leading: IconButton(
  //         icon: Icon(Icons.arrow_back),
  //           color: Color.fromARGB(255, 16, 27, 79),
  //           iconSize: 40,
  //          onPressed: () => Navigator.pop(context),
  //         ),
  //         backgroundColor: Color.fromARGB(0, 17, 7, 51),
  //         elevation: 0,
  //       ),

  //       body: Container(
  //        decoration: BoxDecoration(
  //                              border: Border.all(),
  //                             image: DecorationImage(
  //                               image: AssetImage(
  //                                 ImageConstant.imgImage651,//خلفيه
  //                               ),
  //                               fit: BoxFit.cover,
  //                             ),
  //                           ),

  //                   child: Stack(
  //                     alignment: Alignment.topRight,
  //                     children: [
  //                       Align(
  //                         alignment: Alignment.bottomCenter,
  //                         child: Container(
  //                             padding: EdgeInsets.symmetric(
  //                   horizontal: 30.h,//غيرنا 20
  //                   vertical: 65.v,//غيرنا 45
  //                 ),

  //                           child: Column(
  //                             mainAxisSize: MainAxisSize.min,
  //                             crossAxisAlignment: CrossAxisAlignment.start,
  //                             children: [
  //                                SizedBox(height: 55.v),//غ 75
  //                               Align(
  //                                 alignment: Alignment.centerRight,
  //                                 child: SizedBox(
  //                                   height: 65.v,
  //                                   width: 219.h,
  //                                   child: Stack(
  //                                     alignment: Alignment.topRight,
  //                                     children: [
  //                                       Align(
  //                                         alignment: Alignment.bottomCenter,
  //                                         child: Container(
  //                                           decoration:
  //                                               AppDecoration.outlinePrimary3,
  //                                           child: Text(
  //                                             "إنجازاتك       "    ,
  //                                             style:
  //                                                 theme.textTheme.displayMedium,
  //                                           ),
  //                                         ),
  //                                       ),
  //                                       CustomImageView(//صوره جمب الانجازات
  //                                         imagePath: ImageConstant.imgPodium1,
  //                                         height: 65.adaptSize,
  //                                         width: 65.adaptSize,
  //                                         alignment: Alignment.topRight,
  //                                       ),
  //                                     ],
  //                                   ),
  //                                 ),
  //                               ),
  //                               SizedBox(height: 20.v),/////غ
  //                               Container(
  //                                 margin: EdgeInsets.only(right: 2.h),
  //                                 padding: EdgeInsets.symmetric(
  //                                   horizontal: 23.h,
  //                                   vertical: 95.v,
  //                                 ),
  //                                 decoration:
  //                                     AppDecoration.outlinePrimary6.copyWith(
  //                                   borderRadius:
  //                                       BorderRadiusStyle.roundedBorder33,
  //                                 ),
  //                                 child: Column(
  //                                   mainAxisSize: MainAxisSize.min,
  //                                   mainAxisAlignment: MainAxisAlignment.center,
  //                                   children: [
  //                                     SizedBox(height: 0.v),
  //                                     _buildGrid(context),
  //                                   ],
  //                                 ),
  //                               ),
  //                             ],
  //                           ),
  //                         ),
  //                       ),
  //                       CustomImageView(
  //                         imagePath: ImageConstant.imgOutput13,//صورة رزين
  //                         height: 134.v,
  //                         width: 128.h,
  //                         alignment: Alignment.bottomLeft,
  //                       ),
  //                       CustomImageView(
  //                         imagePath: ImageConstant.imgFireworks4,//صورة الي ورا النجمة
  //                         height: 124.v,
  //                         width: 127.h,
  //                         alignment: Alignment.topLeft,
  //                         margin: EdgeInsets.only(top: 165.v),
  //                       ),
  //                       CustomImageView(
  //                         imagePath: ImageConstant.imgImage23,//النجمة
  //                         height: 124.v,
  //                         width: 128.h,
  //                         alignment: Alignment.topLeft,
  //                         margin: EdgeInsets.only(
  //                           left: 1.h,
  //                           top: 165.v,
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               // ),
  //             // ),
  //           // ],
  //         // ),
  //       // ),
  //       bottomNavigationBar: _buildBottomAppBar(context),
  //       // floatingActionButton: CustomFloatingButton(
  //       //   height: 44,
  //       //   width: 44,
  //       //   child: Icon(
  //       //     Icons.add,
  //       //   ),
  //       // ),
  //       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
  //     ),
  //   );
  // }

  // /// Section Widget
  // // PreferredSizeWidget _buildAppBar(BuildContext context) {
  // //   return CustomAppBar(
  // //     leadingWidth: 394.h,
  // //     leading: AppbarLeadingImage(
  // //       imagePath: ImageConstant.imgArrow3,// القديم صورة السهم
  // //       margin: EdgeInsets.fromLTRB(37.h, 26.v, 327.h, 26.v),
  // //     ),
  // //   );
  // // }

  // /// Section Widget
  // Widget _buildGrid(BuildContext context) {//الميداليات الخمسة
  //   return Padding(
  //     padding: EdgeInsets.only(left: 1.h),
  //     child: GridView.builder(
  //       shrinkWrap: true,
  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //         mainAxisExtent: 97.v,
  //         crossAxisCount: 3,
  //         mainAxisSpacing: 16.h,
  //         crossAxisSpacing: 16.h,
  //       ),
  //       physics: NeverScrollableScrollPhysics(),
  //       itemCount: 5,
  //       itemBuilder: (context, index) {
  //        return Grid1ItemWidget();
  //       },
  //     ),
  //   );
  // }

  // /// Section Widget
  // Widget _buildBottomAppBar(BuildContext context) {
  //   return CustomBottomBar(
  //     onChanged: (BottomBarEnum type) {},
  //   );
  // }

  // ignore_for_file: must_be_immutable

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 394.h,
          decoration: AppDecoration.outlinePrimary,
          // child: SingleChildScrollView(
          child: SizedBox(
            // height: SizeUtils.height,
            height:795,
            width: 394.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.h,
                      vertical: 95.v,
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
                        // Align(
                        //   alignment: Alignment.centerRight,
                        //   child: SizedBox(
                        //     height: 92.v,
                        //     width: 219.h,
                        //     child: Stack(
                        //       alignment: Alignment.topRight,
                        //       children: [
                        //         Align(
                        //           alignment: Alignment.bottomCenter,
                        //           child: Container(
                        //             // decoration: AppDecoration.outlineBlack900,
                        //             child: Text(
                        //               "إنجازاتك",
                        //               style: theme.textTheme.displayMedium,
                        //             ),
                        //           ),
                        //         ),
                        //         CustomImageView(
                        //           imagePath: ImageConstant.imgPodium1,
                        //           height: 75.adaptSize,
                        //           width: 75.adaptSize,
                        //           alignment: Alignment.topRight,
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                        SizedBox(height: 45.v),
                        Container(
                          margin: EdgeInsets.only(
                            left: 8.h,
                            right: 11.h,
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
                                  CustomImageView(
                                    imagePath: ImageConstant.medalP,
                                    height: 94.adaptSize,
                                    width: 94.adaptSize,
                                    radius: BorderRadius.circular(
                                      47.h,
                                    ),
                                  //  margin: EdgeInsets.only(
                                  //     // top: 5.v,
                                  //   ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.medalP,
                                    height: 94.adaptSize,
                                    width: 94.adaptSize,
                                    radius: BorderRadius.circular(
                                      47.h,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.medalP,
                                    height: 94.adaptSize,
                                    width: 94.adaptSize,
                                    radius: BorderRadius.circular(
                                      47.h,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 37.v),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomIconButton(
                                    height: 94.adaptSize,
                                    width: 94.adaptSize,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.medalP,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: CustomIconButton(
                                      height: 94.adaptSize,
                                      width: 94.adaptSize,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.medalP,
                                      ),
                                    ),
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
                // CustomImageView(
                //   imagePath: ImageConstant.imgScreenshot2023, //رزين
                //   height: 134.v,
                //   width: 128.h,
                //   alignment: Alignment.bottomLeft,
                //   margin: EdgeInsets.only(bottom: 16.v),
                // ),

                 CustomImageView(
                  imagePath: ImageConstant.imgScreenshot2023, //رزين
                  height: 180.v,
                  width: 133.h,
                  margin: EdgeInsets.only(
                    top: 300.v,
                    right: 5.h, 
                    bottom: 15,
                  ),
                ),
                // CustomImageView(
                //   imagePath: ImageConstant.imgFireworks4,
                //   height: 124.v,
                //   width: 127.h,
                //   alignment: Alignment.topLeft,
                //   margin: EdgeInsets.only(top: 170.v),
                // ),
                // CustomImageView(
                //   imagePath: ImageConstant.imgImage23, //رزين؟
                //   height: 124.v,
                //   width: 128.h,
                //   alignment: Alignment.topLeft,
                //   margin: EdgeInsets.only(
                //     left: 1.h,
                //     top: 170.v,
                //   ),
                // ),
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
