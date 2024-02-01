import '../frame_fortyfour_screen/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';

class FrameFortyfourScreen extends StatelessWidget {
  const FrameFortyfourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 362.v,
          width: 636.h,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLroom31,
                height: 362.v,
                width: 636.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 343.v,
                        width: 501.h,
                        margin: EdgeInsets.only(bottom: 2418.v),
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgOutput21,
                              height: 183.v,
                              width: 120.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(bottom: 26.v),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(right: 41.h),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 28.v,
                                      width: 58.h,
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgThumbsUp,
                                            height: 28.v,
                                            width: 58.h,
                                            radius: BorderRadius.circular(
                                              14.h,
                                            ),
                                            alignment: Alignment.center,
                                          ),
                                          CustomImageView(
                                            imagePath: ImageConstant.imgArrow5,
                                            height: 3.v,
                                            width: 46.h,
                                            alignment: Alignment.bottomCenter,
                                            margin:
                                                EdgeInsets.only(bottom: 11.v),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 92.v),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(top: 30.v),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgScreenshot202348x69,
                                                  height: 48.v,
                                                  width: 69.h,
                                                  alignment:
                                                      Alignment.centerRight,
                                                ),
                                                SizedBox(height: 49.v),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgScreenshot202395x108,
                                                  height: 95.v,
                                                  width: 108.h,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 203.v,
                                            width: 226.h,
                                            margin: EdgeInsets.only(
                                              left: 9.h,
                                              bottom: 20.v,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.topRight,
                                              children: [
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgVector,
                                                  height: 106.v,
                                                  width: 112.h,
                                                  alignment: Alignment.topLeft,
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgScreenshot20231,
                                                  height: 48.v,
                                                  width: 69.h,
                                                  alignment: Alignment.topRight,
                                                  margin: EdgeInsets.only(
                                                    top: 29.v,
                                                    right: 35.h,
                                                  ),
                                                ),
                                                CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgOutput12,
                                                  height: 134.v,
                                                  width: 118.h,
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  margin: EdgeInsets.only(
                                                      right: 10.h),
                                                ),
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgTelevision,
                                                  height: 21.v,
                                                  width: 44.h,
                                                  alignment:
                                                      Alignment.centerRight,
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
                          ],
                        ),
                      ),
                      _buildUserProfile(context),
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

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 2762.v,
        child: ListView.separated(
          padding: EdgeInsets.only(
            left: 7166.h,
            top: 2129.v,
          ),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 39.h,
            );
          },
          itemCount: 3,
          itemBuilder: (context, index) {
            return UserprofileItemWidget();
          },
        ),
      ),
    );
  }
}
