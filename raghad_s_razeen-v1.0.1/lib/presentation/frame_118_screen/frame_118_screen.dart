import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';

class Frame118Screen extends StatelessWidget {
  const Frame118Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50.withOpacity(0.4),
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 26.v),
            child: Container(
              height: 729.v,
              width: 394.h,
              margin: EdgeInsets.only(bottom: 5.v),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: 617.v,
                      width: 349.h,
                      margin: EdgeInsets.only(left: 12.h),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup994,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 20.h,
                                top: 12.v,
                              ),
                              padding: EdgeInsets.symmetric(vertical: 33.v),
                              decoration:
                                  AppDecoration.outlinePrimary8.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder33,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 15.h),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 122.v,
                                            width: 193.h,
                                            child: Stack(
                                              alignment: Alignment.centerLeft,
                                              children: [
                                                Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                    height: 116.v,
                                                    width: 178.h,
                                                    decoration: BoxDecoration(
                                                      color: theme.colorScheme
                                                          .onSecondaryContainer
                                                          .withOpacity(0.9),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        5.h,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgImage221,
                                                  height: 120.v,
                                                  width: 125.h,
                                                  alignment:
                                                      Alignment.centerLeft,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 90.adaptSize,
                                            width: 90.adaptSize,
                                            margin: EdgeInsets.only(
                                              top: 12.v,
                                              bottom: 20.v,
                                            ),
                                            decoration: BoxDecoration(
                                              color: theme.colorScheme
                                                  .onSecondaryContainer
                                                  .withOpacity(0.85),
                                              borderRadius:
                                                  BorderRadius.circular(
                                                45.h,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 53.v),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 14.h,
                                      right: 7.h,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 116.v,
                                          width: 177.h,
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme
                                                .onSecondaryContainer
                                                .withOpacity(0.9),
                                            borderRadius: BorderRadius.circular(
                                              5.h,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                            top: 4.v,
                                            bottom: 22.v,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 5.h,
                                            vertical: 26.v,
                                          ),
                                          decoration: AppDecoration
                                              .fillOnSecondaryContainer
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder45,
                                          ),
                                          child: Container(
                                            decoration:
                                                AppDecoration.outlinePrimary3,
                                            child: Text(
                                              "أسف",
                                              style: CustomTextStyles
                                                  .headlineSmallBluegray700Black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 41.v),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 15.h,
                                      right: 7.h,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 116.v,
                                          width: 178.h,
                                          margin: EdgeInsets.only(top: 2.v),
                                          decoration: BoxDecoration(
                                            color: theme.colorScheme
                                                .onSecondaryContainer
                                                .withOpacity(0.9),
                                            borderRadius: BorderRadius.circular(
                                              5.h,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(bottom: 28.v),
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 5.h,
                                            vertical: 27.v,
                                          ),
                                          decoration: AppDecoration
                                              .fillOnSecondaryContainer
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder45,
                                          ),
                                          child: Container(
                                            decoration:
                                                AppDecoration.outlinePrimary3,
                                            child: Text(
                                              "شكرًا",
                                              style: CustomTextStyles
                                                  .headlineSmallBluegray700Black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 56.v),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 58.v,
                              width: 301.h,
                              margin: EdgeInsets.only(bottom: 17.v),
                              decoration: BoxDecoration(
                                color: appTheme.yellow100.withOpacity(0.95),
                                borderRadius: BorderRadius.circular(
                                  29.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: 256.h,
                              decoration: AppDecoration.outlinePrimary3,
                              child: Text(
                                "صِل  بالمكان الصحيح ..\nللتحدث بطريقة مناسبة مع جدك",
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleMediumBlack,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage167,
                            height: 28.v,
                            width: 27.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(
                              left: 38.h,
                              bottom: 57.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage225,
                            height: 185.v,
                            width: 193.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 63.h),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage224,
                            height: 185.v,
                            width: 193.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(
                              left: 51.h,
                              top: 174.v,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 120.v,
                              width: 125.h,
                              margin: EdgeInsets.only(
                                left: 8.h,
                                top: 221.v,
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage223,
                                    height: 120.v,
                                    width: 125.h,
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage227,
                                    height: 27.v,
                                    width: 29.h,
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(
                                      top: 28.v,
                                      right: 13.h,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage219,
                            height: 153.v,
                            width: 159.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(bottom: 99.v),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage220,
                            height: 185.v,
                            width: 193.h,
                            alignment: Alignment.bottomLeft,
                            margin: EdgeInsets.only(
                              left: 63.h,
                              bottom: 99.v,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 79.h,
                              margin: EdgeInsets.only(
                                top: 74.v,
                                right: 21.h,
                              ),
                              decoration: AppDecoration.outlinePrimary3,
                              child: Text(
                                "من فضلك",
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.titleLargeBluegray700,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowLeftPrimary,
                            height: 89.v,
                            width: 52.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 143.v,
                              right: 86.h,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrowLeftPrimary78x52,
                            height: 78.v,
                            width: 52.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(
                              right: 83.h,
                              bottom: 234.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgArrow13Primary,
                            height: 221.v,
                            width: 63.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(
                              top: 162.v,
                              right: 78.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage23114x111,
                    height: 114.v,
                    width: 111.h,
                    alignment: Alignment.bottomRight,
                    margin: EdgeInsets.only(bottom: 113.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgOutput13,
                    height: 134.v,
                    width: 128.h,
                    alignment: Alignment.bottomLeft,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 394.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow3,
        margin: EdgeInsets.fromLTRB(26.h, 26.v, 321.h, 26.v),
      ),
    );
  }
}
