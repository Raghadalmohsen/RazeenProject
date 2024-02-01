import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
import 'package:raghad_s_razeen/widgets/custom_text_form_field.dart';

class Frame104Screen extends StatelessWidget {
  Frame104Screen({Key? key})
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
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            height: SizeUtils.height,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup225,
                  height: 858.v,
                  width: 393.h,
                  radius: BorderRadius.circular(
                    33.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: SingleChildScrollView(
                    child: Container(
                      height: 794.v,
                      width: double.maxFinite,
                      margin: EdgeInsets.only(bottom: 19.v),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 20.h,
                                right: 29.h,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imageNotFound,
                                    height: 3.v,
                                    width: 47.h,
                                  ),
                                  SizedBox(height: 75.v),
                                  Container(
                                    margin: EdgeInsets.only(left: 6.h),
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 22.h,
                                      vertical: 120.v,
                                    ),
                                    decoration:
                                        AppDecoration.outlinePrimary7.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder33,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(height: 26.v),
                                        CustomTextFormField(
                                          controller: emailController,
                                          hintText: "البريد الإلكتروني",
                                          hintStyle:
                                              theme.textTheme.titleLarge!,
                                          contentPadding: EdgeInsets.symmetric(
                                            horizontal: 16.h,
                                            vertical: 19.v,
                                          ),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlinePrimary,
                                        ),
                                        SizedBox(height: 38.v),
                                        CustomTextFormField(
                                          controller: passwordController,
                                          hintText: "كلمة المرور",
                                          hintStyle:
                                              theme.textTheme.titleLarge!,
                                          textInputAction: TextInputAction.done,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          obscureText: true,
                                          contentPadding: EdgeInsets.only(
                                            top: 19.v,
                                            right: 21.h,
                                            bottom: 19.v,
                                          ),
                                          borderDecoration:
                                              TextFormFieldStyleHelper
                                                  .outlinePrimary,
                                        ),
                                        SizedBox(height: 7.v),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            margin: EdgeInsets.only(left: 7.h),
                                            decoration:
                                                AppDecoration.outlinePrimary3,
                                            child: Text(
                                              "نسيت كلمة المرور؟",
                                              style:
                                                  CustomTextStyles.bodySmall12,
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 49.v),
                                        CustomElevatedButton(
                                          height: 42.v,
                                          width: 177.h,
                                          text: "تسجيل الدخول",
                                          buttonStyle: CustomButtonStyles
                                              .outlinePrimaryTL21,
                                          buttonTextStyle:
                                              theme.textTheme.bodyLarge!,
                                        ),
                                        SizedBox(height: 7.v),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  decoration: AppDecoration
                                                      .outlinePrimary3,
                                                  child: Text(
                                                    "تسجيل جديد",
                                                    style: CustomTextStyles
                                                        .bodySmall12,
                                                  ),
                                                ),
                                                SizedBox(height: 1.v),
                                                SizedBox(
                                                  width: 65.h,
                                                  child: Divider(
                                                    color: appTheme.blueGray700
                                                        .withOpacity(0.84),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 13.h),
                                              child: Text(
                                                "ليس لديك حساب؟",
                                                style: CustomTextStyles
                                                    .bodySmall12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage23152x119,
                            height: 152.v,
                            width: 119.h,
                            alignment: Alignment.topRight,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 244.h,
                              margin: EdgeInsets.only(
                                top: 129.v,
                                right: 31.h,
                              ),
                              decoration: AppDecoration.outlinePrimary3,
                              child: Text(
                                "تسجيل الدخول",
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: CustomTextStyles.headlineLarge32,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgScreenshot2023206x150,
                            height: 206.v,
                            width: 150.h,
                            alignment: Alignment.bottomLeft,
                          ),
                        ],
                      ),
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
}
