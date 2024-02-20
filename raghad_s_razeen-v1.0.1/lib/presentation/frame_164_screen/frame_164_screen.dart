import 'package:raghad_s_razeen/widgets/custom_icon_button.dart';
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
            height:795,
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
                                  CustomImageView(
                                    imagePath: ImageConstant.medalP,//1 medal
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
                                    imagePath: ImageConstant.medalP,//2 madel
                                    height: 94.adaptSize,
                                    width: 94.adaptSize,
                                    radius: BorderRadius.circular(
                                      47.h,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.medalP,//3 medal
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
                                      imagePath: ImageConstant.medalP,//medal4
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 20.h),
                                    child: CustomIconButton(
                                      height: 94.adaptSize,
                                      width: 94.adaptSize,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.medalP,//medal5
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
                ),

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
