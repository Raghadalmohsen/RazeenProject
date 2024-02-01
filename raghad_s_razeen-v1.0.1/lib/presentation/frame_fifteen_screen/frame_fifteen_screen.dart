import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
import 'package:raghad_s_razeen/widgets/custom_text_form_field.dart';

class FrameFifteenScreen extends StatelessWidget {
  FrameFifteenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
                SizedBox(height: 40.v),
                CustomImageView(
                  imagePath: ImageConstant.imageNotFound,
                  height: 2.v,
                  width: 30.h,
                  margin: EdgeInsets.only(left: 32.h),
                ),
                SizedBox(height: 7.v),
                Container(
                  height: 584.v,
                  width: 345.h,
                  margin: EdgeInsets.only(left: 14.h),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgScreenshot2023173x129,
                        height: 173.v,
                        width: 129.h,
                        alignment: Alignment.bottomLeft,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage23110x100,
                        height: 110.v,
                        width: 100.h,
                        alignment: Alignment.topRight,
                      ),
                      _buildEmailSection(context),
                    ],
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
  Widget _buildEmailSection(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        height: 440.v,
        width: 296.h,
        margin: EdgeInsets.only(
          left: 18.h,
          top: 48.v,
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 109.v,
                ),
                decoration: AppDecoration.outlinePrimary7.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder33,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 29.v),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: CustomTextFormField(
                        controller: emailController,
                        hintText: "البريد الإلكتروني",
                        hintStyle: CustomTextStyles.bodyLargeBluegray700,
                        textInputAction: TextInputAction.done,
                        suffix: Container(
                          margin: EdgeInsets.fromLTRB(11.h, 12.v, 8.h, 12.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgImage28,
                            height: 23.adaptSize,
                            width: 23.adaptSize,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 47.v,
                        ),
                        contentPadding: EdgeInsets.only(
                          left: 30.h,
                          top: 14.v,
                          bottom: 14.v,
                        ),
                      ),
                    ),
                    Spacer(),
                    CustomElevatedButton(
                      height: 33.v,
                      width: 155.h,
                      text: "ارسال",
                      buttonStyle: CustomButtonStyles.outlinePrimaryTL16,
                      buttonTextStyle:
                          CustomTextStyles.bodyMediumOnPrimaryContainer15,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 251.h,
                margin: EdgeInsets.only(top: 44.v),
                decoration: AppDecoration.outlinePrimary3,
                child: Text(
                  "نسيت كلمة المرور",
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.headlineLarge,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
