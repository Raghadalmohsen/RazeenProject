import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';

class Frame144Screen extends StatelessWidget {
  const Frame144Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
            border: Border.all(
              color: theme.colorScheme.primary.withOpacity(1),
              width: 1.h,
            ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgFrameFortyeight,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 16.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60.v),
                _buildWidgetStack(context),
                SizedBox(height: 39.v),
                _buildWidgetRow(context),
                SizedBox(height: 8.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 19.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgWhatsappImage,
                          height: 84.v,
                          width: 85.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage171,
                          height: 60.adaptSize,
                          width: 60.adaptSize,
                          margin: EdgeInsets.only(
                            left: 58.h,
                            top: 12.v,
                            bottom: 12.v,
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
  Widget _buildWidgetStack(BuildContext context) {
    return SizedBox(
      height: 341.adaptSize,
      width: 341.adaptSize,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage133,
            height: 217.v,
            width: 126.h,
            alignment: Alignment.bottomLeft,
          ),
          Align(
            alignment: Alignment.topRight,
            child: SizedBox(
              height: 178.v,
              width: 250.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage134,
                    height: 178.v,
                    width: 250.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 65.h,
                        right: 58.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgImage154,
                                  height: 60.adaptSize,
                                  width: 60.adaptSize,
                                  margin: EdgeInsets.only(right: 3.h),
                                ),
                              ),
                              Expanded(
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgImage153,
                                  height: 60.adaptSize,
                                  width: 60.adaptSize,
                                  margin: EdgeInsets.only(left: 3.h),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.v),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage159,
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                            margin: EdgeInsets.only(left: 35.h),
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
    );
  }

  /// Section Widget
  Widget _buildWidgetRow(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage160,
              height: 101.adaptSize,
              width: 101.adaptSize,
              margin: EdgeInsets.only(top: 86.v),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage155,
              height: 85.adaptSize,
              width: 85.adaptSize,
              margin: EdgeInsets.only(bottom: 101.v),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage156,
              height: 107.adaptSize,
              width: 107.adaptSize,
              margin: EdgeInsets.only(
                top: 69.v,
                bottom: 10.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
