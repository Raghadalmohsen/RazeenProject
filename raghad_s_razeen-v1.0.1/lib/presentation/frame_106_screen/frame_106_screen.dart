import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
import 'package:raghad_s_razeen/widgets/custom_text_form_field.dart';

class Frame106Screen extends StatelessWidget {
  Frame106Screen({Key? key})
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
                ImageConstant.imgGroup171,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 12.v),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 31.v),
                SizedBox(
                  height: 794.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imageNotFound,
                        height: 3.v,
                        width: 47.h,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 20.h),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 794.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage23152x119,
                                height: 152.v,
                                width: 119.h,
                                alignment: Alignment.topRight,
                              ),
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgScreenshot2023206x150,
                                height: 206.v,
                                width: 150.h,
                                alignment: Alignment.bottomLeft,
                              ),
                              _buildEmailSection(context),
                            ],
                          ),
                        ),
                      ),
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
      alignment: Alignment.topCenter,
      child: Container(
        height: 563.v,
        width: 345.h,
        margin: EdgeInsets.only(top: 78.v),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                margin: EdgeInsets.only(right: 7.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 22.h,
                  vertical: 123.v,
                ),
                decoration: AppDecoration.outlinePrimary7.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder33,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 40.v),
                    CustomTextFormField(
                      controller: emailController,
                      hintText: "البريد الإلكتروني",
                      hintStyle: theme.textTheme.titleLarge!,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(-12.h, 21.v, 20.h, 16.v),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgImage28,
                          height: 23.adaptSize,
                          width: 23.adaptSize,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 60.v,
                      ),
                      contentPadding: EdgeInsets.only(
                        left: 30.h,
                        top: 17.v,
                        bottom: 17.v,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
                    ),
                    Spacer(),
                    CustomElevatedButton(
                      height: 42.v,
                      width: 177.h,
                      text: "ارسال",
                      buttonStyle: CustomButtonStyles.outlinePrimaryTL21,
                      buttonTextStyle: theme.textTheme.bodyLarge!,
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 299.h,
                margin: EdgeInsets.only(top: 44.v),
                decoration: AppDecoration.outlinePrimary3,
                child: Text(
                  "نسيت كلمة المرور",
                  maxLines: null,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.headlineLarge32,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
