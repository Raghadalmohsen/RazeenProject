import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
import 'package:raghad_s_razeen/widgets/custom_text_form_field.dart';

class FrameFiveScreen extends StatelessWidget {
  FrameFiveScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
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
                          _buildEmail(context),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
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
                  vertical: 87.v,
                ),
                decoration: AppDecoration.outlinePrimary7.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder33,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 30.v),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: CustomTextFormField(
                        controller: emailController,
                        hintText: "البريد الإلكتروني",
                      ),
                    ),
                    SizedBox(height: 29.v),
                    Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: CustomTextFormField(
                        controller: passwordController,
                        hintText: "كلمة المرور",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        obscureText: true,
                        contentPadding: EdgeInsets.only(
                          top: 15.v,
                          right: 19.h,
                          bottom: 15.v,
                        ),
                      ),
                    ),
                    SizedBox(height: 6.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: EdgeInsets.only(left: 17.h),
                        decoration: AppDecoration.outlinePrimary3,
                        child: Text(
                          "نسيت كلمة المرور؟",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ),
                    SizedBox(height: 38.v),
                    CustomElevatedButton(
                      height: 33.v,
                      width: 155.h,
                      text: "تسجيل الدخول",
                      buttonStyle: CustomButtonStyles.outlinePrimaryTL16,
                      buttonTextStyle:
                          CustomTextStyles.bodyMediumOnPrimaryContainer15,
                    ),
                    SizedBox(height: 6.v),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 1.v),
                          child: Column(
                            children: [
                              Container(
                                decoration: AppDecoration.outlinePrimary3,
                                child: Text(
                                  "تسجيل جديد",
                                  style: theme.textTheme.bodySmall,
                                ),
                              ),
                              SizedBox(
                                width: 57.h,
                                child: Divider(
                                  color: appTheme.blueGray700.withOpacity(0.84),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text(
                            "ليس لديك حساب؟",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 214.h,
                margin: EdgeInsets.only(top: 44.v),
                decoration: AppDecoration.outlinePrimary3,
                child: Text(
                  "تسجيل الدخول",
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
