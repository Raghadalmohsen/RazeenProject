import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';

class FrameEightyoneScreen extends StatelessWidget {
  const FrameEightyoneScreen({Key? key})
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
                ImageConstant.imgGroup304,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: 356.h,
            padding: EdgeInsets.symmetric(horizontal: 21.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildArrowOneStack(context),
                Spacer(),
                SizedBox(height: 13.v),
                CustomImageView(
                  imagePath: ImageConstant.imgWhatsappImage,
                  height: 59.v,
                  width: 68.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowOneStack(BuildContext context) {
    return SizedBox(
      height: 47.v,
      width: 312.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage17,
            height: 46.v,
            width: 312.h,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imageNotFound,
            height: 2.v,
            width: 30.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 2.h),
          ),
        ],
      ),
    );
  }
}
