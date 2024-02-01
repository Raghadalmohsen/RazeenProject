import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';

class Frame156Screen extends StatelessWidget {
  const Frame156Screen({Key? key})
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
              horizontal: 36.h,
              vertical: 16.v,
            ),
            child: Column(
              children: [
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImage133,
                        height: 195.v,
                        width: 110.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgOutput14,
                        height: 134.v,
                        width: 130.h,
                        margin: EdgeInsets.only(top: 61.v),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 38.v),
                CustomImageView(
                  imagePath: ImageConstant.imgImage113,
                  height: 70.v,
                  width: 40.h,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 39.h,
                    right: 31.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 32.h,
                    vertical: 17.v,
                  ),
                  decoration: AppDecoration.fillErrorContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder52,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomImageView(
                          imagePath: ImageConstant.imgImage108,
                          height: 70.adaptSize,
                          width: 70.adaptSize,
                          margin: EdgeInsets.only(
                            top: 1.v,
                            right: 20.h,
                          ),
                        ),
                      ),
                      Expanded(
                        child: CustomImageView(
                          imagePath: ImageConstant.imgImage112,
                          height: 70.adaptSize,
                          width: 70.adaptSize,
                          margin: EdgeInsets.only(
                            left: 20.h,
                            top: 1.v,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 28.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 35.h,
                      right: 6.h,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage114,
                          height: 75.adaptSize,
                          width: 75.adaptSize,
                          margin: EdgeInsets.only(bottom: 2.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage103,
                          height: 75.adaptSize,
                          width: 75.adaptSize,
                          margin: EdgeInsets.only(top: 3.v),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.v),
                CustomImageView(
                  imagePath: ImageConstant.imgWhatsappImage,
                  height: 84.v,
                  width: 85.h,
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
}
