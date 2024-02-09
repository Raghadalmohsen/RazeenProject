import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/frame_104_screen/frame_104_screen.dart';
import 'package:raghad_s_razeen/presentation/frame_107_screen/frame_107_screen.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
import 'package:raghad_s_razeen/widgets/custom_text_form_field.dart';

class Frame105Screen extends StatelessWidget {
  Frame105Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController nameSectionController = TextEditingController();

  TextEditingController emailSectionController = TextEditingController();

  TextEditingController passwordSectionController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          extendBodyBehindAppBar: true, //زر الرجوع
        appBar: AppBar(
          // 1. Back Arrow Icon
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: Color.fromARGB(0, 17, 7, 51),
          elevation: 0,
        ),

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
                height: SizeUtils.height,
              width: double.maxFinite,
                
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 45.v,
                        ),
                        // decoration: BoxDecoration(
                        //   border: Border.all(),
                        //   image: DecorationImage(
                        //     image: AssetImage(
                        //       ImageConstant.imgGroup225,
                        //      //الخلفيه
                        //     ),
                        //     fit: BoxFit.cover,
                        //   ),
                        // ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // CustomImageView( //بيحذف
                            //   imagePath: ImageConstant.imageNotFound,
                            //   height: 3.v,
                            //   width: 47.h,
                            // ),
                            SizedBox(height: 75.v),
                            Container(
                              margin: EdgeInsets.only(
                                left: 6.h,
                                right: 9.h,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 22.h,
                                vertical: 120.v,
                              ),
                              decoration:
                                  AppDecoration.outlinePrimary7.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder33,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 50.v),
                                  _buildNameSection(context),
                                  SizedBox(height: 18.v),
                                  _buildEmailSection(context),
                                  SizedBox(height: 19.v),
                                  _buildPasswordSection(context),
                                  SizedBox(height: 37.v),
                                  _buildRegisterButtonSection(context),
                                  SizedBox(height: 8.v),
                                 Align(
  alignment: Alignment.centerLeft,
  child: Padding(
    padding: EdgeInsets.only(left: 60.h),
    child: Row(
      children: [
        InkWell(
          onTap: () {
            // Replace 'LoginScreen()' with your actual login screen widget
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Frame107Screen()),//مفروض صفحه 104
            );
          },
          child: Padding(
            padding: EdgeInsets.all(8.0), // For easier tapping
            child: Text(
              "تسجيل الدخول",
              style: CustomTextStyles.bodySmall12.copyWith(
                color: Colors.blue, // Change the color to indicate it's tappable
              ),
            ),
          ),
        ),
        SizedBox(height: 1.v),
        SizedBox(
          width: 0.1.h,
          // child: Divider(
          //   color: appTheme.blueGray700.withOpacity(0.84),
          // ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 16.h),
          child: Text(
            "لديك حساب؟",
            style: CustomTextStyles.bodySmall12,
          ),
        ),
      ],
    ),
  ),

                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 75.v),
                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgImage23152x119,//النجمة
                      height: 152.v,
                      width: 119.h,
                      alignment: Alignment.topRight,
                      margin: EdgeInsets.only(top: 44.v),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 244.h,
                        margin: EdgeInsets.only(
                          top: 174.v,
                          right: 11.h,
                        ),
                        decoration: AppDecoration.outlinePrimary3,
                        child: Text(
                          "تسجيل جديد",
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
      ),
    );
  }

  /// Section Widget
  Widget _buildNameSection(BuildContext context) {
    return CustomTextFormField(
      controller: nameSectionController,
      hintText: "                                الإسم",
      hintStyle: theme.textTheme.titleLarge!,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 19.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
    );
  }

  /// Section Widget
  Widget _buildEmailSection(BuildContext context) {
    return CustomTextFormField(
      controller: emailSectionController,
      hintText: "                       البريد الإلكتروني",
      hintStyle: theme.textTheme.titleLarge!,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 17.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
    );
  }

  /// Section Widget
  Widget _buildPasswordSection(BuildContext context) {
    return CustomTextFormField(
      controller: passwordSectionController,
      hintText: "                               كلمة المرور",
      hintStyle: theme.textTheme.titleLarge!,
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
      contentPadding: EdgeInsets.only(
        top: 19.v,
        right: 21.h,
        bottom: 19.v,
      ),
      borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
    );
  }

  /// Section Widget
  Widget _buildRegisterButtonSection(BuildContext context) {
    return CustomElevatedButton(
      height: 42.v,
      width: 177.h,
      text: "تسجيل جديد",
      buttonStyle: CustomButtonStyles.outlinePrimaryTL21,
      buttonTextStyle: theme.textTheme.bodyLarge!,
    );
  }
}
