import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';

class Frame117Screen extends StatelessWidget {
  const Frame117Screen({Key? key})
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
            padding: EdgeInsets.only(top: 39.v),
            child: Container(
              height: 717.v,
              width: 394.h,
              margin: EdgeInsets.only(bottom: 5.v),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 605.v,
                      width: 329.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.imgGroup878,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 35.h,
                                right: 164.h,
                                bottom: 130.v,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    height: 56.v,
                                    width: 130.h,
                                    decoration: BoxDecoration(
                                      color: theme
                                          .colorScheme.onSecondaryContainer
                                          .withOpacity(0.9),
                                      borderRadius: BorderRadius.circular(
                                        5.h,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 108.v),
                                  Container(
                                    height: 56.v,
                                    width: 130.h,
                                    decoration: BoxDecoration(
                                      color: theme
                                          .colorScheme.onSecondaryContainer
                                          .withOpacity(0.9),
                                      borderRadius: BorderRadius.circular(
                                        5.h,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: appTheme.blue5066,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.roundedBorder33,
                              ),
                              child: Container(
                                height: 574.v,
                                width: 329.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 4.h,
                                  vertical: 66.v,
                                ),
                                decoration:
                                    AppDecoration.outlinePrimary8.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder33,
                                ),
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        height: 56.v,
                                        width: 130.h,
                                        margin: EdgeInsets.only(
                                          left: 26.h,
                                          top: 17.v,
                                        ),
                                        decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.onSecondaryContainer
                                              .withOpacity(0.9),
                                          borderRadius: BorderRadius.circular(
                                            5.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        width: 182.h,
                                        margin: EdgeInsets.only(top: 27.v),
                                        decoration:
                                            AppDecoration.outlinePrimary3,
                                        child: Text(
                                          "إذا كان جدك \nعطشان",
                                          maxLines: null,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Container(
                                        width: 182.h,
                                        margin: EdgeInsets.only(
                                          left: 5.h,
                                          bottom: 29.v,
                                        ),
                                        decoration:
                                            AppDecoration.outlinePrimary3,
                                        child: Text(
                                          "إذا كان جدك يريد\nالاستماع",
                                          maxLines: null,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        width: 182.h,
                                        margin: EdgeInsets.only(left: 5.h),
                                        decoration:
                                            AppDecoration.outlinePrimary3,
                                        child: Text(
                                          "إذا كان جدك يريد \nالقراءة",
                                          maxLines: null,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.titleSmall,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        height: 90.adaptSize,
                                        width: 90.adaptSize,
                                        margin: EdgeInsets.only(right: 7.h),
                                        decoration: BoxDecoration(
                                          color: theme
                                              .colorScheme.onSecondaryContainer
                                              .withOpacity(0.85),
                                          borderRadius: BorderRadius.circular(
                                            45.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        height: 90.adaptSize,
                                        width: 90.adaptSize,
                                        margin: EdgeInsets.only(
                                          top: 162.v,
                                          right: 7.h,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 15.h,
                                          vertical: 14.v,
                                        ),
                                        decoration: AppDecoration
                                            .fillOnSecondaryContainer
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder45,
                                        ),
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgImage182,
                                          height: 60.adaptSize,
                                          width: 60.adaptSize,
                                          alignment: Alignment.topCenter,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Container(
                                        height: 90.adaptSize,
                                        width: 90.adaptSize,
                                        margin: EdgeInsets.only(
                                          right: 7.h,
                                          bottom: 29.v,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 15.h,
                                          vertical: 12.v,
                                        ),
                                        decoration: AppDecoration
                                            .fillOnSecondaryContainer
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder45,
                                        ),
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgImage180,
                                          height: 60.adaptSize,
                                          width: 60.adaptSize,
                                          alignment: Alignment.bottomCenter,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        height: 260.v,
                                        width: 85.h,
                                        margin: EdgeInsets.only(
                                          top: 69.v,
                                          right: 80.h,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 2.h,
                                          vertical: 12.v,
                                        ),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            image: fs.Svg(
                                              ImageConstant.imgGroup216,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgArrow14Primary107x78,
                                          height: 107.v,
                                          width: 78.h,
                                          alignment: Alignment.topCenter,
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgArrow12Primary,
                                      height: 132.v,
                                      width: 64.h,
                                      alignment: Alignment.bottomRight,
                                      margin: EdgeInsets.only(
                                        right: 97.h,
                                        bottom: 88.v,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage184,
                                      height: 60.adaptSize,
                                      width: 60.adaptSize,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(
                                        top: 15.v,
                                        right: 22.h,
                                      ),
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
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: 256.h,
                              margin: EdgeInsets.only(left: 30.h),
                              decoration: AppDecoration.outlinePrimary3,
                              child: Text(
                                "صِل  بالمكان الصحيح ..\nحتى تلبي طلبات جدك",
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
                              left: 18.h,
                              bottom: 57.v,
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
        margin: EdgeInsets.fromLTRB(24.h, 26.v, 323.h, 26.v),
      ),
    );
  }
}
