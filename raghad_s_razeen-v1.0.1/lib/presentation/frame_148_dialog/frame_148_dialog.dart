import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';

// ignore_for_file: must_be_immutable
class Frame148Dialog extends StatelessWidget {
  const Frame148Dialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 229.v,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          _buildFrameColumn(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 31.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillTeal.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder33,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 46.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage164,
                  height: 28.v,
                  width: 27.h,
                  margin: EdgeInsets.only(bottom: 131.v),
                ),
                Container(
                  height: 133.v,
                  width: 145.h,
                  margin: EdgeInsets.only(top: 25.v),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImg07952,
                        height: 115.adaptSize,
                        width: 115.adaptSize,
                        alignment: Alignment.bottomLeft,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage60,
                        height: 68.v,
                        width: 72.h,
                        alignment: Alignment.topRight,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 100.h,
              child: Text(
                "أداء رائع",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.headlineLargeOnSecondaryContainer,
              ),
            ),
          ),
          SizedBox(height: 24.v),
        ],
      ),
    );
  }
}
