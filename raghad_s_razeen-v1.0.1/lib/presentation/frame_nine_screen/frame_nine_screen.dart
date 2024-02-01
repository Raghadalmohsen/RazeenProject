import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';

class FrameNineScreen extends StatelessWidget {
  const FrameNineScreen({Key? key})
      : super(
          key: key,
        );

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
          child: SizedBox(
            width: 359.h,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTf(context),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgScreenshot2023173x129,
                  height: 206.v,
                  width: 161.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 265.v,
        width: 334.h,
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgScreenshot2023131x158,
              height: 131.v,
              width: 158.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                left: 77.h,
                top: 41.v,
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage17,
              height: 46.v,
              width: 312.h,
              alignment: Alignment.topLeft,
            ),
            CustomElevatedButton(
              height: 31.v,
              width: 237.h,
              text: "تسجيل جديد",
              margin: EdgeInsets.only(left: 37.h),
              buttonStyle: CustomButtonStyles.outlinePrimaryTL15,
              buttonTextStyle: CustomTextStyles.titleSmallOnPrimaryContainer,
              alignment: Alignment.bottomLeft,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: EdgeInsets.only(
                  left: 37.h,
                  right: 60.h,
                  bottom: 44.v,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 72.h,
                  vertical: 4.v,
                ),
                decoration: AppDecoration.outlinePrimary9.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder14,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 4.v),
                    Text(
                      "تسجيل الدخول",
                      style: CustomTextStyles.titleSmallOnPrimaryContainer,
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgImage26,
              height: 110.v,
              width: 109.h,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.only(bottom: 25.v),
            ),
          ],
        ),
      ),
    );
  }
}
