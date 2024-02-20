import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
import 'package:raghad_s_razeen/widgets/custom_floating_button.dart';
import 'package:raghad_s_razeen/widgets/custom_text_form_field.dart';

class Frame108Screen extends StatelessWidget {//الملف الشخصي
  Frame108Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController editTextController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController currentPasswordController = TextEditingController();

  TextEditingController newPasswordController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true, //زر الرجوع
        appBar: AppBar(
          // 1. Back Arrow Icon
          leading: IconButton(
           iconSize: 40,
            icon: Icon(Icons.arrow_back), 
            color: Color.fromARGB(255, 16, 27, 79),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: Color.fromARGB(0, 17, 7, 51),
          elevation: 0,
        ),

        extendBody: true,
        bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Container(
            height: SizeUtils.height,
          width: double.maxFinite,
       
            
            child: Form(
              key: _formKey,
              child: Container(
              decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.BackgroundHouse,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                                               child: SingleChildScrollView(//for overflow
                   physics: NeverScrollableScrollPhysics(),

                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 45.v,
                        ),
                        
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           
                            SizedBox(height: 75.v),
                            Container(
                              width: 338.h,
                              margin: EdgeInsets.only(
                                left: 6.h,
                                right: 9.h,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 6.h,
                                vertical: 85.v,
                              ),
                              decoration:
                                  AppDecoration.outlinePrimary7.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder33,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 49.v),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                      height: 60.v,
                                      width: 307.h,
                                      child: Stack(
                                        alignment: Alignment.topRight,
                                        children: [
                                          _buildEditText(context),
                                          Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(top: 13.v),
                                              decoration:
                                                  AppDecoration.outlinePrimary3,
                                              child: Text(
                                                "الإسم       ",
                                                style:
                                                    theme.textTheme.titleLarge,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 7.v),
                                  _buildEmail(context),
                                  SizedBox(height: 11.v),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      decoration: AppDecoration.outlinePrimary3,
                                      child: Text(
                                        "تغيير كلمة المرور    ",
                                        style: CustomTextStyles
                                            .titleMediumBluegray700,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 11.v),
                                  _buildCurrentPassword(context),
                                  SizedBox(height: 11.v),
                                  _buildNewPassword(context),
                                  SizedBox(height: 14.v),
                                  _buildTf(context),
                                ],
                              ),
                            ),
                            SizedBox(height: 75.v),
                          ],
                        ),
                      ),
                    ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage23152x119,//نجمه
                      height: 152.v,
                      width: 119.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 44.v),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 227.h,
                        margin: EdgeInsets.only(
                          top: 167.v,
                          right: 69.h,
                        ),
                        decoration: AppDecoration.outlinePrimary3,
                        child: Text(
                          "  الملف الشخصي",
                          maxLines: null,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.headlineLarge32,
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgScreenshot2023173x129,//الجد
                      height: 206.v,
                      width: 150.h,
                   alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(bottom: 13.v),
                    ),
                  ],
                ),
              ),
            ),
        
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEditText(BuildContext context) {
    return CustomTextFormField(
      width: 294.h,
      controller: editTextController,
      alignment: Alignment.centerLeft,
      borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 13.h,
      ),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "                        البريد الإلكتروني",
        hintStyle: theme.textTheme.titleLarge!,
        contentPadding: EdgeInsets.only(
           top: 9.v,
        right: 21.h,
        bottom: 9.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
      ),
    );
  }

  /// Section Widget
  Widget _buildCurrentPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 17.h,
        right: 13.h,
      ),
      child: CustomTextFormField(
        controller: currentPasswordController,
        hintText: "                       كلمة المرور الحالية",
        hintStyle: theme.textTheme.titleLarge!,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        contentPadding: EdgeInsets.only(
           top: 9.v,
        right: 21.h,
        bottom: 9.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
      ),
    );
  }

  /// Section Widget
  Widget _buildNewPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 19.h,
        right: 13.h,
      ),
      child: CustomTextFormField(
        controller: newPasswordController,
        hintText: "                      كلمة المرور الجديدة",
        hintStyle: theme.textTheme.titleLarge!,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        obscureText: true,
        contentPadding: EdgeInsets.only(
          top: 9.v,
          right: 18.h,
          bottom: 9.v,
        ),
        borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
      ),
    );
  }

  /// Section Widget
  Widget _buildTf(BuildContext context) {
    return CustomElevatedButton(
      height: 33.v,
      width: 172.h,
      text: "حفظ",
      buttonStyle: CustomButtonStyles.outlinePrimaryTL16,
      buttonTextStyle: theme.textTheme.bodyLarge!,
    );
  }

  /// Section Widget
  // Widget _buildIMG(BuildContext context) {
  //   return CustomBottomBar(
  //     onChanged: (BottomBarEnum type) {},
  //   );
  // }
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}

