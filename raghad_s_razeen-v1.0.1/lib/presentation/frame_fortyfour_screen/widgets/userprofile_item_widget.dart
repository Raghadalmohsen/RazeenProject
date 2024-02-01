import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 357.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.gray50.withOpacity(0.4),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: theme.colorScheme.primary.withOpacity(1),
            width: 1.h,
          ),
          borderRadius: BorderRadiusStyle.roundedBorder33,
        ),
        child: Container(
          height: 633.v,
          width: 357.h,
          decoration: AppDecoration.outlinePrimary5.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder33,
          ),
          child: Stack(
            alignment: Alignment.topLeft,
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
                        imagePath: ImageConstant.imgImage65633x356,
                        height: 633.v,
                        width: 356.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                height: 126.v,
                                width: 333.h,
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        width: 204.h,
                                        decoration:
                                            AppDecoration.outlinePrimary3,
                                        child: Text(
                                          "إنجازاتك",
                                          maxLines: null,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.headlineLarge,
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgArrow3Onprimarycontainer,
                                      height: 2.v,
                                      width: 30.h,
                                      alignment: Alignment.topLeft,
                                      margin: EdgeInsets.only(
                                        left: 8.h,
                                        top: 33.v,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage25,
                                      height: 32.v,
                                      width: 312.h,
                                      alignment: Alignment.topLeft,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgPodium175x75,
                                      height: 75.adaptSize,
                                      width: 75.adaptSize,
                                      alignment: Alignment.bottomRight,
                                      margin: EdgeInsets.only(
                                        right: 21.h,
                                        bottom: 22.v,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 497.v,
                                width: 341.h,
                                child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color:
                                            appTheme.blue5066.withOpacity(0.5),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder33,
                                        ),
                                        child: Container(
                                          height: 391.v,
                                          width: 329.h,
                                          padding: EdgeInsets.symmetric(
                                              vertical: 76.v),
                                          decoration: AppDecoration
                                              .outlinePrimary6
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder33,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.bottomLeft,
                                            children: [
                                              Align(
                                                alignment: Alignment.topCenter,
                                                child: Container(
                                                  height: 34.v,
                                                  width: 154.h,
                                                  margin: EdgeInsets.only(
                                                      top: 42.v),
                                                  decoration: BoxDecoration(
                                                    color: theme.colorScheme
                                                        .onSecondaryContainer
                                                        .withOpacity(0.7),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      17.h,
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: theme.colorScheme
                                                            .primary,
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
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                  height: 34.v,
                                                  width: 154.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 14.v),
                                                  decoration: BoxDecoration(
                                                    color: theme.colorScheme
                                                        .onSecondaryContainer
                                                        .withOpacity(0.7),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      17.h,
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: theme.colorScheme
                                                            .primary,
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
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Container(
                                                  height: 34.v,
                                                  width: 154.h,
                                                  margin: EdgeInsets.only(
                                                      bottom: 16.v),
                                                  decoration: BoxDecoration(
                                                    color: theme.colorScheme
                                                        .onSecondaryContainer
                                                        .withOpacity(0.7),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      17.h,
                                                    ),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: theme.colorScheme
                                                            .primary,
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
                                              Opacity(
                                                opacity: 0.7,
                                                child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgFireworks2,
                                                  height: 97.v,
                                                  width: 100.h,
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  margin: EdgeInsets.only(
                                                    left: 18.h,
                                                    bottom: 49.v,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.only(
                                                    left: 9.h,
                                                    bottom: 39.v,
                                                  ),
                                                  color: theme.colorScheme
                                                      .onSecondaryContainer
                                                      .withOpacity(0.5),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder59,
                                                  ),
                                                  child: Container(
                                                    height: 118.adaptSize,
                                                    width: 118.adaptSize,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 30.h,
                                                      vertical: 9.v,
                                                    ),
                                                    decoration: AppDecoration
                                                        .outlinePrimary10
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder59,
                                                    ),
                                                    child: Stack(
                                                      alignment:
                                                          Alignment.bottomLeft,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImg08083,
                                                          height: 100.v,
                                                          width: 57.h,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Container(
                                                            height: 33.v,
                                                            width: 26.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                              left: 14.h,
                                                              bottom: 13.v,
                                                            ),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: appTheme
                                                                  .deepOrangeA100,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                16.h,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Opacity(
                                                opacity: 0.7,
                                                child: CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgFireworks2,
                                                  height: 97.v,
                                                  width: 100.h,
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  margin: EdgeInsets.only(
                                                    right: 20.h,
                                                    bottom: 50.v,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.only(
                                                    right: 12.h,
                                                    bottom: 39.v,
                                                  ),
                                                  color: theme.colorScheme
                                                      .onSecondaryContainer
                                                      .withOpacity(0.5),
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .circleBorder59,
                                                  ),
                                                  child: Container(
                                                    height: 118.adaptSize,
                                                    width: 118.adaptSize,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 30.h,
                                                      vertical: 9.v,
                                                    ),
                                                    decoration: AppDecoration
                                                        .outlinePrimary10
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .circleBorder59,
                                                    ),
                                                    child: Stack(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      children: [
                                                        CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgImg08072,
                                                          height: 100.v,
                                                          width: 57.h,
                                                          alignment:
                                                              Alignment.center,
                                                        ),
                                                        Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Container(
                                                            height: 34.v,
                                                            width: 26.h,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    bottom:
                                                                        13.v),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: appTheme
                                                                  .blueGray50,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                17.h,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: Container(
                                                  width: 146.h,
                                                  margin: EdgeInsets.only(
                                                    top: 53.v,
                                                    right: 77.h,
                                                  ),
                                                  child: Text(
                                                    " أكملت ٣ مهارات بنجاح",
                                                    maxLines: null,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .bodyMediumOnPrimaryContainer,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                  width: 146.h,
                                                  margin: EdgeInsets.only(
                                                      left: 26.h),
                                                  child: Text(
                                                    " أكملت مهارة بنجاح",
                                                    maxLines: null,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .bodyMediumOnPrimaryContainer,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        width: 142.h,
                                        margin: EdgeInsets.only(bottom: 182.v),
                                        child: Text(
                                          " أكملت مهارتين بنجاح",
                                          maxLines: null,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .bodyMediumOnPrimaryContainer,
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgScreenshot2023186x97,
                                      height: 186.v,
                                      width: 97.h,
                                      alignment: Alignment.bottomLeft,
                                      margin: EdgeInsets.only(left: 2.h),
                                    ),
                                  ],
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
                imagePath: ImageConstant.imgFireworks2,
                height: 110.v,
                width: 108.h,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 78.v),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage23110x109,
                height: 110.v,
                width: 109.h,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 80.v),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 76.h,
                    vertical: 4.v,
                  ),
                  decoration: AppDecoration.outlinePrimary11.copyWith(
                    borderRadius: BorderRadiusStyle.circleBorder30,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 2.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImg089639,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgMedal240,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.v),
                      Divider(
                        indent: 29.h,
                        endIndent: 30.h,
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImg089839,
                height: 44.adaptSize,
                width: 44.adaptSize,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 40.v),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
