import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';

class FrameNinetythreeScreen extends StatelessWidget {
  const FrameNinetythreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50.withOpacity(0.7),
        body: SizedBox(
          height: 359.v,
          width: 634.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 366.v,
                  width: 634.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgImage104,
                          height: 359.v,
                          width: 634.h,
                          alignment: Alignment.center,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 137.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 77.h,
                            vertical: 7.v,
                          ),
                          decoration: AppDecoration.outlinePrimary11.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder33,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 3.h),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Opacity(
                                      opacity: 0.7,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgImg08961,
                                        height: 40.adaptSize,
                                        width: 40.adaptSize,
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.7,
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgMedal22,
                                        height: 40.adaptSize,
                                        width: 40.adaptSize,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5.v),
                              Divider(
                                indent: 31.h,
                                endIndent: 30.h,
                              ),
                              SizedBox(height: 4.v),
                            ],
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: 0.7,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgImg08981,
                          height: 44.adaptSize,
                          width: 44.adaptSize,
                          alignment: Alignment.bottomCenter,
                          margin: EdgeInsets.only(bottom: 42.v),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgScreenshot2023124x96,
                        height: 124.v,
                        width: 96.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(
                          left: 18.h,
                          bottom: 54.v,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: 233.h,
                            bottom: 121.v,
                          ),
                          child: Text(
                            "موافق",
                            style: CustomTextStyles
                                .titleMediumOnSecondaryContainer,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 209.v,
                          width: 400.h,
                          margin: EdgeInsets.only(
                            top: 31.v,
                            right: 70.h,
                          ),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onSecondaryContainer
                                .withOpacity(1),
                            borderRadius: BorderRadius.circular(
                              20.h,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 359.v,
                  width: 512.h,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage117,
                        height: 359.v,
                        width: 512.h,
                        alignment: Alignment.center,
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: 237.v,
                          width: 474.h,
                          margin: EdgeInsets.only(top: 29.v),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgArrowUp,
                                height: 41.v,
                                width: 96.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(
                                  left: 25.h,
                                  bottom: 28.v,
                                ),
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                  margin: EdgeInsets.only(left: 68.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.h,
                                    vertical: 15.v,
                                  ),
                                  decoration: AppDecoration
                                      .fillOnSecondaryContainer2
                                      .copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder33,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 115.v,
                                        width: 358.h,
                                        child: Stack(
                                          alignment: Alignment.topLeft,
                                          children: [
                                            Align(
                                              alignment: Alignment.centerRight,
                                              child: SizedBox(
                                                width: 339.h,
                                                child: Text(
                                                  "مرحبا ،،\n\nمن هنا تبدأ رحلة تعلمك الممتعة مع رزين \nأختر بيتًا و ابدأ بالمرح ..",
                                                  maxLines: 5,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: CustomTextStyles
                                                      .titleLargeBluegray700,
                                                ),
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImage163,
                                              height: 40.adaptSize,
                                              width: 40.adaptSize,
                                              alignment: Alignment.topLeft,
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(height: 20.v),
                                      CustomElevatedButton(
                                        width: 92.h,
                                        text: "موافق",
                                        alignment: Alignment.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  height: 98.v,
                                  width: 117.h,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 2.h,
                                    vertical: 14.v,
                                  ),
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: fs.Svg(
                                        ImageConstant.imgGroup338,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgSettings,
                                    height: 61.v,
                                    width: 80.h,
                                    alignment: Alignment.bottomLeft,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant
                                    .imgSettingsOnsecondarycontainer,
                                height: 45.v,
                                width: 82.h,
                                alignment: Alignment.bottomLeft,
                                margin: EdgeInsets.only(
                                  left: 38.h,
                                  bottom: 20.v,
                                ),
                              ),
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: Container(
                                  height: 16.v,
                                  width: 86.h,
                                  margin: EdgeInsets.only(
                                    left: 31.h,
                                    bottom: 30.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: theme
                                        .colorScheme.onSecondaryContainer
                                        .withOpacity(1),
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
            ],
          ),
        ),
      ),
    );
  }
}
