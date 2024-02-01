import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_floating_button.dart';

class FrameThirtythreeScreen extends StatelessWidget {
  FrameThirtythreeScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.gray50,
            border: Border.all(
              color: theme.colorScheme.primary.withOpacity(1),
              width: 1.h,
            ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup1117,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: 359.h,
            padding: EdgeInsets.symmetric(vertical: 40.v),
            decoration: AppDecoration.outlinePrimary1.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder33,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imageNotFound,
                  height: 2.v,
                  width: 30.h,
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 32.h),
                ),
                SizedBox(height: 8.v),
                _buildStackViewScreenshotWidgetImage(context),
                SizedBox(height: 74.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 286.v,
                        width: 102.h,
                        margin: EdgeInsets.only(bottom: 41.v),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                margin: EdgeInsets.only(right: 13.h),
                                padding: EdgeInsets.symmetric(vertical: 20.v),
                                decoration:
                                    AppDecoration.outlinePrimary2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder33,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 26.v),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImg08123,
                                      height: 90.v,
                                      width: 86.h,
                                    ),
                                    SizedBox(height: 8.v),
                                    Container(
                                      decoration: AppDecoration.outlinePrimary3,
                                      child: Text(
                                        "قصة",
                                        style: theme.textTheme.headlineSmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage44,
                              height: 93.v,
                              width: 83.h,
                              alignment: Alignment.bottomRight,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          left: 5.h,
                          top: 134.v,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 3.h,
                          vertical: 10.v,
                        ),
                        decoration: AppDecoration.outlinePrimary2.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder33,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 35.v),
                            CustomImageView(
                              imagePath: ImageConstant.imgImg0810267x68,
                              height: 67.v,
                              width: 68.h,
                              radius: BorderRadius.circular(
                                1.h,
                              ),
                            ),
                            SizedBox(height: 12.v),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                width: 77.h,
                                decoration: AppDecoration.outlinePrimary3,
                                child: Text(
                                  "اختبر نفسك",
                                  maxLines: null,
                                  overflow: TextOverflow.ellipsis,
                                  style: theme.textTheme.headlineSmall,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 273.v,
                        width: 100.h,
                        margin: EdgeInsets.only(
                          left: 1.h,
                          bottom: 54.v,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: Container(
                                margin: EdgeInsets.only(left: 11.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 5.h,
                                  vertical: 20.v,
                                ),
                                decoration:
                                    AppDecoration.outlinePrimary2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder33,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 32.v),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImg0795277x79,
                                      height: 77.v,
                                      width: 79.h,
                                    ),
                                    SizedBox(height: 15.v),
                                    Container(
                                      decoration: AppDecoration.outlinePrimary3,
                                      child: Text(
                                        "العب",
                                        style: CustomTextStyles
                                            .headlineSmallBluegray700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage4584x94,
                              height: 84.v,
                              width: 94.h,
                              alignment: Alignment.bottomLeft,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildImageFloatingActionButtonMedal(context),
        floatingActionButton: CustomFloatingButton(
          height: 45,
          width: 44,
          child: Icon(
            Icons.add,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  Widget _buildStackViewScreenshotWidgetImage(BuildContext context) {
    return SizedBox(
      height: 141.v,
      width: 353.h,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 57.v,
              width: 317.h,
              margin: EdgeInsets.only(bottom: 18.v),
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
            imagePath: ImageConstant.imgScreenshot2023141x101,
            height: 141.v,
            width: 101.h,
            alignment: Alignment.centerRight,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 315.h,
              margin: EdgeInsets.only(
                right: 4.h,
                bottom: 13.v,
              ),
              decoration: AppDecoration.outlinePrimary3,
              child: Text(
                "كيف أتقبل الاختلاف بيني وبين جدي؟",
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage164,
            height: 20.adaptSize,
            width: 20.adaptSize,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(
              left: 16.h,
              bottom: 50.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildImageFloatingActionButtonMedal(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
