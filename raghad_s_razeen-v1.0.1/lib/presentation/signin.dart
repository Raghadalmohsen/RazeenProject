import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/initialscreen.dart';
import 'package:raghad_s_razeen/presentation/frame_105_screen/frame_105_screen.dart';
import 'package:raghad_s_razeen/presentation/forgetpass.dart';
import 'package:raghad_s_razeen/presentation/explainmap.dart';
import 'package:raghad_s_razeen/presentation/signup.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
import 'package:raghad_s_razeen/widgets/custom_text_form_field.dart';
import "package:email_validator/email_validator.dart";
//
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//

class Signin extends StatelessWidget {
  Signin({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _signInUser(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      String email = emailController.text;
      String password = passwordController.text;

      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password,
        );

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Explainmap()),
        );
      } catch (e) {
        print('Sign-in error: $e');
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text(
                'خطأ',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
              content: Text(
                'أوه لا! يبدو أنك لم تقم بإنشاء حساب بعد يرجى إنشاء حساب جديد للاستمتاع بالمرح والتعلم معنا',
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
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
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
            iconSize: 40,
            icon: Icon(Icons.arrow_back),
            color: Color.fromARGB(255, 16, 27, 79),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Initialscreen()),
              );
            },
          ),
          backgroundColor: Color.fromARGB(0, 255, 255, 255),
          elevation: 0,
        ),
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            height: SizeUtils.height,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.BackgroundHouse,
                  height: 858.v,
                  width: 393.h,
                  border: Border.all(),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 794.v,
                    width: double.maxFinite,
                    margin: EdgeInsets.only(bottom: 5.v),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 20.h, right: 29.h, bottom: 65),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 75.v),
                                Container(
                                  margin: EdgeInsets.only(left: 6.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 22.h,
                                    vertical: 90.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlinePrimary7.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder33,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 15.v),
                                      TextFormField(textAlign: TextAlign.right,
                                        controller: emailController,
                                        decoration: InputDecoration(
                                          hintText: "البريد الإلكتروني",
                                        ),
                                        style: theme.textTheme.titleLarge!,
                                        textInputAction: TextInputAction.next,
                                        keyboardType: TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'البريد الإلكتروني مطلوب';
                                          } else if (!EmailValidator.validate(value)) {
                                            return 'البريد الإلكتروني غير صالح';
                                          }
                                          return null;
                                        },
                                      ),
                                      SizedBox(height: 18.v),
                                      TextFormField(textAlign: TextAlign.right,
                                        controller: passwordController,
                                        decoration: InputDecoration(
                                          hintText: "كلمة المرور",
                                        ),
                                        style: theme.textTheme.titleLarge!,
                                        textInputAction: TextInputAction.done,
                                        keyboardType: TextInputType.visiblePassword,
                                        obscureText: true,
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return 'كلمة المرور مطلوبة';
                                          } else if (value.length < 8) {
                                            return 'كلمة المرور يجب أن تحتوي على الأقل 8 خانات';
                                          }
                                          return null;
                                        },
                                      ),
                                      SizedBox(height: 7.v),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          margin: EdgeInsets.only(left: 7.h),
                                          decoration:
                                              AppDecoration.outlinePrimary3,
                                          child: CupertinoButton(
                                            child: Text(
                                              "نسيت كلمة المرور؟",
                                              style:
                                                  CustomTextStyles.bodySmall12,
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                CupertinoPageRoute(
                                                    builder: (context) =>
                                                        Forgetpass()),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 49.v),
                                      CustomElevatedButton(
                                        onPressed: () => _signInUser(context),
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
                                                child: CupertinoButton(
                                                  child: Text(
                                                    "تسجيل جديد",
                                                    style: CustomTextStyles
                                                        .bodySmall12
                                                        .copyWith(
                                                      color: Colors.blue,
                                                    ),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      CupertinoPageRoute(
                                                          builder: (context) =>
                                                              Signup()),
                                                    );
                                                  },
                                                ),
                                              ),
                                              SizedBox(height: 1.v),
                                            ],
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 13.h),
                                            child: Text(
                                              "ليس لديك حساب؟",
                                              style:
                                                  CustomTextStyles.bodySmall12,
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
                          margin: EdgeInsets.only(top: 70.v),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            width: 244.h,
                            margin: EdgeInsets.only(
                              top: 150.v,
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
                          imagePath: ImageConstant.imgScreenshot2023173x129,
                          height: 206.v,
                          width: 150.h,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(bottom: 1.v),
                        ),
                      ],
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