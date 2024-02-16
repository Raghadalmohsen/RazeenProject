import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/frame_103_screen/frame_103_screen.dart';
import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_floating_button.dart';

class Frame131Screen extends StatelessWidget {
  Frame131Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true, //زر الرجوع
        appBar: AppBar(
          // 1. Back Arrow Icon
          leading: IconButton(
            iconSize: 40,
            color: const Color.fromARGB(255, 255, 255, 255),
            padding: EdgeInsets.only(left: 360),
            icon: Icon(Icons.arrow_circle_right_outlined),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: Color.fromARGB(0, 213, 204, 243),
          elevation: 0,
        ),

        extendBody: true,
        bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Container(
          decoration: BoxDecoration(
            border: Border.all(),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.BackgroundHouse2, //خلفيه 
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
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 31.h,
                      top: 125.v, //مكان الاشياء
                      right: 40.h,
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
                                      margin: EdgeInsets.only(right: 16.h),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 1.h,
                                        vertical: 14.v,
                                      ),
                                      // decoration: AppDecoration.outlinePrimary2
                                      //     .copyWith(
                                      //   borderRadius:
                                      //       BorderRadiusStyle.roundedBorder33,
                                      // ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [

                                          Container(
                                          height: 194.v,
                                          width: 89.h,
                                          decoration: AppDecoration.outlinePrimary3,
                                          child: ElevatedButton(
                                            onPressed: () { Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) =>  Frame103Screen()),
                                        );},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.transparent,
                                                foregroundColor: Colors.black,
                                                elevation: 0,
                                                side: const BorderSide(
                                                  width: 1.0,
                                                  color: Color.fromARGB(0, 244, 67, 54),
                                                  
                                                )),
                                            
                                            child:Image.asset(
                                              ImageConstant.play,
                                              height: 194,
                                              width:89 ,
                                              )),//العب
                                            
                                            ),

                                            //ينحذف
                                          // CustomImageView(
                                          //   imagePath:
                                          //       ImageConstant.play,// صورة العب
                                          //   height: 194.v,
                                          //   width: 89.h,
                                          // )
                                          // SizedBox(height: 31.v),
                                          // CustomImageView(
                                          //   imagePath:
                                          //       ImageConstant.play,// صورة العب
                                          //   height: 77.v,
                                          //   width: 79.h,
                                          // ),
                                          // SizedBox(height: 15.v),
                                          // Container(
                                          //   decoration:
                                          //       AppDecoration.outlinePrimary3,
                                          //   child: Text(
                                          //     "العب", // العب
                                          //     style:
                                          //         theme.textTheme.headlineSmall,
                                          //   ),
                                          // ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 15.v),
                                    CustomImageView(
                                      imagePath: ImageConstant.Arrow2, //سهم
                                      height: 93.v,
                                      width: 83.h,
                                      alignment: Alignment.centerRight,
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
                                // decoration:
                                //     AppDecoration.outlinePrimary2.copyWith(
                                //   borderRadius:
                                //       BorderRadiusStyle.roundedBorder33,
                                // ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [

                                    Container(
                                          height: 194.v,
                                          width: 89.h,
                                          decoration: AppDecoration.outlinePrimary3,
                                          child: ElevatedButton(
                                            onPressed: () { Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) =>  Frame103Screen()),
                                        );},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.transparent,
                                                foregroundColor: Colors.black,
                                                elevation: 0,
                                                side: const BorderSide(
                                                  width: 1.0,
                                                  color: Color.fromARGB(0, 244, 67, 54),
                                                  
                                                )),
                                            
                                            child:Image.asset(ImageConstant.quiz,
                                              height: 194,
                                              width:89 ,)),//الكويز
                                            
                                            ),

                                     //ينحذف
                                    //  CustomImageView(
                                    //           imagePath: ImageConstant.quiz, // صورة اختبر
                                    //           height: 194.v,
                                    //           width: 89.h,
                                    //         ),
                                    // SizedBox(height: 26.v),
                                    // CustomImageView(
                                    //   imagePath: ImageConstant.imgImg0810267x68, //صورة اختبر
                                    //   height: 67.v,
                                    //   width: 68.h,
                                    //   radius: BorderRadius.circular(
                                    //     1.h,
                                    //   ),
                                    // ),
                                    // // SizedBox(height: 3.v),
                                    // Container(
                                    //   width: 77.h,
                                    //   decoration: AppDecoration.outlinePrimary3,
                                    //   child: Text(
                                    //     "  اختبر",
                                    //     maxLines: null,
                                    //     overflow: TextOverflow.ellipsis,
                                    //     style: theme.textTheme.headlineSmall,
                                    //   ),
                                    // ),
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
                                        // decoration: AppDecoration
                                        //     .outlinePrimary2
                                        //     .copyWith(
                                        //   borderRadius:
                                        //       BorderRadiusStyle.roundedBorder33,
                                        // ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [

                                            Container(
                                          height: 194.v,
                                          width: 89.h,
                                          decoration: AppDecoration.outlinePrimary3,
                                          child: ElevatedButton(
                                            onPressed: () { Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) =>  Frame103Screen()),
                                        );},
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.transparent,
                                                foregroundColor: Colors.black,
                                                elevation: 0,
                                                side: const BorderSide(
                                                  width: 1.0,
                                                  color: Color.fromARGB(0, 244, 67, 54),
                                                  
                                                )),
                                            
                                            child:Image.asset(ImageConstant.story ,
                                              height: 194,
                                              width:89 ,)),//القصة
                                            
                                            ),
                                             //ينحذف

                                            // CustomImageView(
                                            //   imagePath: ImageConstant.story, // صورة القصة
                                            //   height: 194.v,
                                            //   width: 89.h,
                                            // ),
                                            // SizedBox(height: 37.v),
                                            // CustomImageView(
                                            //   imagePath: ImageConstant.imgImg08123, // صورة القصة
                                            //   height: 90.v,
                                            //   width: 86.h,
                                            // ),
                                            // SizedBox(height: 22.v),
                                            // Container(
                                            //   decoration:
                                            //       AppDecoration.outlinePrimary3,
                                            //   child: Text(
                                            //     "شاهد", 
                                            //     style: theme
                                            //         .textTheme.headlineSmall,
                                            //   ),
                                            // ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5.v),
                                    CustomImageView(
                                      imagePath: ImageConstant.Arrow1, //سهم
                                      height: 84.v,
                                      width: 94.h,
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
                ),
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
                    width: 165.h,
                    margin: EdgeInsets.only(
                      top: 155.v,
                      right: 88.h,
                    ),
                    decoration: AppDecoration.outlinePrimary3,
                    child: Text(
                      "كيف ألبي طلبات جدي؟",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleMedium,
                    ),
                  ),
                ),
              ],
              // ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imageNotFound,
        margin: EdgeInsets.fromLTRB(24.h, 26.v, 339.h, 26.v),
      ),
    );
  }

  /// Section Widget
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
          CustomImageView(
            imagePath: ImageConstant.imgImage164,
            height: 28.v,
            width: 27.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 12.h),
          ),
        ],
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
