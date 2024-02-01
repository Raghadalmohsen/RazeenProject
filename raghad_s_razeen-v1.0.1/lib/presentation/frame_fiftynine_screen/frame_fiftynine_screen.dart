import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';

class FrameFiftynineScreen extends StatelessWidget {
  const FrameFiftynineScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50.withOpacity(0.4),
        body: SizedBox(
          height: 633.v,
          width: 357.h,
          child: Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 633.v,
                  width: 356.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage652,
                        height: 633.v,
                        width: 356.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(8.h, 7.v, 15.h, 7.v),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage2532x312,
                                height: 32.v,
                                width: 312.h,
                                alignment: Alignment.center,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgArrow3,
                                height: 2.v,
                                width: 30.h,
                                margin: EdgeInsets.only(left: 23.h),
                              ),
                              SizedBox(height: 26.v),
                              SizedBox(
                                height: 420.v,
                                width: 333.h,
                                child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.topCenter,
                                      child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color: appTheme.blue5066,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder33,
                                        ),
                                        child: Container(
                                          height: 391.v,
                                          width: 329.h,
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 29.h,
                                            vertical: 13.v,
                                          ),
                                          decoration: AppDecoration
                                              .outlinePrimary8
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder33,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                  height: 90.adaptSize,
                                                  width: 90.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      right: 3.h),
                                                  padding: EdgeInsets.all(15.h),
                                                  decoration: AppDecoration
                                                      .fillOnSecondaryContainer
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder45,
                                                  ),
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgImage27,
                                                    height: 60.adaptSize,
                                                    width: 60.adaptSize,
                                                    alignment: Alignment.center,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                  height: 90.adaptSize,
                                                  width: 90.adaptSize,
                                                  margin: EdgeInsets.only(
                                                    top: 127.v,
                                                    right: 3.h,
                                                  ),
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 15.h,
                                                    vertical: 14.v,
                                                  ),
                                                  decoration: AppDecoration
                                                      .fillOnSecondaryContainer
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder45,
                                                  ),
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgImage22,
                                                    height: 60.adaptSize,
                                                    width: 60.adaptSize,
                                                    alignment:
                                                        Alignment.topCenter,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                  height: 90.adaptSize,
                                                  width: 90.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      bottom: 44.v),
                                                  padding: EdgeInsets.all(15.h),
                                                  decoration: AppDecoration
                                                      .fillOnSecondaryContainer
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder45,
                                                  ),
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgImage49,
                                                    height: 60.adaptSize,
                                                    width: 60.adaptSize,
                                                    alignment: Alignment.center,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  height: 90.adaptSize,
                                                  width: 90.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      top: 127.v),
                                                  padding: EdgeInsets.all(15.h),
                                                  decoration: AppDecoration
                                                      .fillOnSecondaryContainer
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder45,
                                                  ),
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgImage24,
                                                    height: 60.adaptSize,
                                                    width: 60.adaptSize,
                                                    alignment: Alignment.center,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  height: 90.adaptSize,
                                                  width: 90.adaptSize,
                                                  padding: EdgeInsets.symmetric(
                                                    horizontal: 15.h,
                                                    vertical: 11.v,
                                                  ),
                                                  decoration: AppDecoration
                                                      .fillOnSecondaryContainer
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder45,
                                                  ),
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgImage50,
                                                    height: 60.adaptSize,
                                                    width: 60.adaptSize,
                                                    alignment:
                                                        Alignment.topCenter,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                  height: 90.adaptSize,
                                                  width: 90.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      bottom: 23.v),
                                                  padding: EdgeInsets.all(15.h),
                                                  decoration: AppDecoration
                                                      .fillOnSecondaryContainer
                                                      .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder45,
                                                  ),
                                                  child: CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgImg08422,
                                                    height: 60.adaptSize,
                                                    width: 60.adaptSize,
                                                    alignment: Alignment.center,
                                                  ),
                                                ),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgArrow14Primary67x107,
                                                height: 67.v,
                                                width: 107.h,
                                                alignment:
                                                    Alignment.bottomCenter,
                                                margin: EdgeInsets.only(
                                                    bottom: 97.v),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgArrow12Primary74x102,
                                                height: 74.v,
                                                width: 102.h,
                                                alignment: Alignment.topCenter,
                                                margin:
                                                    EdgeInsets.only(top: 72.v),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgArrow13Primary180x122,
                                                height: 180.v,
                                                width: 122.h,
                                                alignment: Alignment.topCenter,
                                                margin:
                                                    EdgeInsets.only(top: 82.v),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Container(
                                        height: 58.v,
                                        width: 287.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.yellow100
                                              .withOpacity(0.95),
                                          borderRadius: BorderRadius.circular(
                                            29.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  width: 226.h,
                                  child: Divider(
                                    endIndent: 82.h,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgOutput13134x124,
                height: 134.v,
                width: 124.h,
                alignment: Alignment.bottomLeft,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  width: 256.h,
                  margin: EdgeInsets.only(
                    left: 25.h,
                    bottom: 128.v,
                  ),
                  decoration: AppDecoration.outlinePrimary3,
                  child: Text(
                    "صِل  بالمكان الصحيح ..\n للحفاظ على سلامة المكان",
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumBlack,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage23,
                height: 98.adaptSize,
                width: 98.adaptSize,
                alignment: Alignment.bottomRight,
                margin: EdgeInsets.only(
                  right: 6.h,
                  bottom: 130.v,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
