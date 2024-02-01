import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
import 'package:raghad_s_razeen/widgets/custom_text_form_field.dart';

class FrameSixtynineScreen extends StatelessWidget {
  FrameSixtynineScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userProfileController = TextEditingController();

  TextEditingController userEmailController = TextEditingController();

  TextEditingController currentPasswordController = TextEditingController();

  TextEditingController newPasswordController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: 359.h,
                child: Column(
                  children: [
                    SizedBox(
                      height: 633.v,
                      width: 359.h,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 14.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusStyle.roundedBorder33,
                                image: DecorationImage(
                                  image: AssetImage(
                                    ImageConstant.imgGroup1117,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 40.v),
                                  CustomImageView(
                                    imagePath: ImageConstant.imageNotFound,
                                    height: 2.v,
                                    width: 30.h,
                                    margin: EdgeInsets.only(left: 18.h),
                                  ),
                                  SizedBox(height: 55.v),
                                  SizedBox(
                                    height: 536.v,
                                    width: 314.h,
                                    child: Stack(
                                      alignment: Alignment.bottomLeft,
                                      children: [
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            margin: EdgeInsets.only(left: 18.h),
                                            padding: EdgeInsets.symmetric(
                                              horizontal: 8.h,
                                              vertical: 40.v,
                                            ),
                                            decoration: AppDecoration
                                                .outlinePrimary7
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder33,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 5.v),
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                    width: 214.h,
                                                    margin: EdgeInsets.only(
                                                        left: 66.h),
                                                    decoration: AppDecoration
                                                        .outlinePrimary3,
                                                    child: Text(
                                                      "الملف الشخصي",
                                                      maxLines: null,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: theme.textTheme
                                                          .headlineLarge,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 3.v),
                                                _buildUserProfile(context),
                                                SizedBox(height: 14.v),
                                                _buildUserEmail(context),
                                                SizedBox(height: 12.v),
                                                Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: Container(
                                                    margin: EdgeInsets.only(
                                                        right: 16.h),
                                                    decoration: AppDecoration
                                                        .outlinePrimary3,
                                                    child: Text(
                                                      "تغيير كلمة المرور",
                                                      style: CustomTextStyles
                                                          .titleSmallBluegray700,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: 6.v),
                                                _buildCurrentPassword(context),
                                                SizedBox(height: 13.v),
                                                _buildNewPassword(context),
                                                SizedBox(height: 10.v),
                                                _buildSaveButton(context),
                                              ],
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgScreenshot2023173x129,
                                          height: 173.v,
                                          width: 129.h,
                                          alignment: Alignment.bottomLeft,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImg08982,
                            height: 45.v,
                            width: 44.h,
                            alignment: Alignment.bottomCenter,
                            margin: EdgeInsets.only(bottom: 32.v),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 2.v),
                    SizedBox(
                      width: 144.h,
                      child: Divider(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 6.h,
      ),
      child: CustomTextFormField(
        controller: userProfileController,
        hintText: "الإسم",
      ),
    );
  }

  /// Section Widget
  Widget _buildUserEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 6.h,
      ),
      child: CustomTextFormField(
        controller: userEmailController,
        hintText: "البريد الإلكتروني",
      ),
    );
  }

  /// Section Widget
  Widget _buildCurrentPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 6.h,
      ),
      child: CustomTextFormField(
        controller: currentPasswordController,
        hintText: "كلمة المرور الحالية",
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        contentPadding: EdgeInsets.only(
          top: 15.v,
          right: 9.h,
          bottom: 15.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNewPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 6.h,
      ),
      child: CustomTextFormField(
        controller: newPasswordController,
        hintText: "كلمة المرور الجديدة",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        contentPadding: EdgeInsets.only(
          top: 15.v,
          right: 10.h,
          bottom: 15.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveButton(BuildContext context) {
    return CustomElevatedButton(
      height: 33.v,
      width: 155.h,
      text: "حفظ",
      buttonStyle: CustomButtonStyles.outlinePrimaryTL16,
      buttonTextStyle: CustomTextStyles.bodyMediumOnPrimaryContainer15,
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
