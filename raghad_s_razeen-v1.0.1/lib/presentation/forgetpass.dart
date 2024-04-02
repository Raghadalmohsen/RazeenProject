import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
import 'package:raghad_s_razeen/widgets/custom_text_form_field.dart';

class Forgetpass extends StatelessWidget {
  //نسيت كلمه المرور
  Forgetpass({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
             extendBodyBehindAppBar: true, 
        appBar: AppBar(
          // 1. Back Arrow Icon
          actions:<Widget>[
        IconButton(
            iconSize: 40,
            color: Color.fromARGB(255, 5, 0, 36),
            icon: Icon(Icons.arrow_forward),
            onPressed: () => Navigator.pop(context),
          ),

          ],
           backgroundColor: Color.fromARGB(0, 213, 204, 243),
          elevation: 0,
       
          leading: IconButton(   color: Color.fromARGB(0, 5, 0, 36),onPressed: (){},            icon: Icon(Icons.arrow_forward),)
          ),
        extendBody: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.gray50,
            border: Border.all(
              color: theme.colorScheme.primary.withOpacity(1),
              width: 1.h,
            ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.BackgroundHouse, //خلفيه
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
                ///////////
                SizedBox(
                  height: 743.v, // كان 794 شال الاصفر
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 794.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.bottomLeft,
                            children: [
                              _buildEmailSection(context),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage23152x119, //نجمه
                        height: 152.v,
                        width: 119.h,
                        alignment: Alignment.topRight,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgScreenshot2023173x129, //الجد
                        height: 206.v,
                        width: 150.h,
                        alignment: Alignment.bottomLeft,
                        margin: EdgeInsets.only(bottom: 1.v), //كان 45
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
                      hintText: "               البريد الإلكتروني",
                      hintStyle: theme.textTheme.titleLarge!,
                      textInputAction: TextInputAction.done,
                      suffix: Container(
                        margin: EdgeInsets.fromLTRB(12.h, 21.v, 20.h, 16.v),
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
                      onPressed: () {
                        String email = emailController.text;
                        FirebaseAuth.instance
                            .sendPasswordResetEmail(email: email)
                            .then((value) {
                          // Show success message or navigate to a success screen
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                content: Text('تم ارسال رابط اعادة تعيين كلمة المرور بنجاح'),
                                actions: <Widget>[
  Center(
    child: TextButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(
        'حسنا',
        style: TextStyle(
          fontSize: 16, 
          color: Colors.blue, 
        ),
      ),
    ),
  ),
],
                              );
                            },
                          );
                        }).catchError((error) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Error'),
                                content: Text(
                                    'Failed to send reset email. Please check your email address.'),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('OK'),
                                  ),
                                ],
                              );
                            },
                          );
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                width: 299.h,
                margin: EdgeInsets.only(top: 100.v),
                decoration: AppDecoration.outlinePrimary3,
                child: Text(
                  "       نسيت كلمة المرور",
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