import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/explainmap.dart';
import 'package:raghad_s_razeen/presentation/initialscreen.dart';
import 'package:raghad_s_razeen/presentation/signin.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
import 'package:raghad_s_razeen/widgets/custom_text_form_field.dart';

import 'package:cloud_firestore/cloud_firestore.dart'; //


class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController nameSectionController = TextEditingController();
  TextEditingController emailSectionController = TextEditingController();
  TextEditingController passwordSectionController = TextEditingController();
  String name = '';
  String email = '';
  String password = '';

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameSectionController.dispose();
    emailSectionController.dispose();
    passwordSectionController.dispose();
    super.dispose();
  }

  Widget _buildNameSection(BuildContext context) {
    return TextFormField(
       textAlign: TextAlign.right,
      controller: nameSectionController,
      decoration: InputDecoration(
        hintText: "الإسم",
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'يرجى إدخال الإسم';
        }
        return null;
      },
      onChanged: (value) {
        setState(() {
          name = value;
        });
      },
    );
  }

  Widget _buildEmailSection(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.right,
      controller: emailSectionController,
      decoration: InputDecoration(
        hintText: "البريد الإلكتروني",
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'يرجى إدخال البريد الإلكتروني';
        } else if (!isValidEmail(value)) {
          return 'البريد الإلكتروني غير صحيح';
        }
        return null;
      },
      onChanged: (value) {
        setState(() {
          email = value;
        });
      },
    );
  }

  Widget _buildPasswordSection(BuildContext context) {
    return TextFormField(
      textAlign: TextAlign.right,
      controller: passwordSectionController,
      decoration: InputDecoration(
        hintText: "كلمة المرور",
      ),
      obscureText: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'يرجى إدخال كلمة المرور';
        } else if (value.length < 8) {
          return 'يجب أن تكون كلمة المرور على الأقل 8 أحرف';
        }
        return null;
      },
      onChanged: (value) {
        setState(() {
          password = value;
        });
      },
    );
  }

  void _registerUser(BuildContext context) async {
  if (_formKey.currentState!.validate()) {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      // Update the user's display name
      await userCredential.user!.updateDisplayName(name);


      // Create a Firestore document for the user
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredential.user!.uid)
          .set({
        'name': name,
        'email': email,
        'skills': {
          'skill1': { //safeplase 
            'isStoryCompleted': false,
            'isQuizCompleted': false,
            'isGameCompleted': false,
          },
          'skill2': {   //request 
            'isStoryCompleted': false,
            'isQuizCompleted': false,
            'isGameCompleted': false,
          },
          'skill3': {   //quiet
            'isStoryCompleted': false,
            'isQuizCompleted': false,
            'isGameCompleted': false,
          },
          'skill4': {   //speak
            'isStoryCompleted': false,
            'isQuizCompleted': false,
            'isGameCompleted': false,
          },
          'skill5': { //respectDiff
            'isStoryCompleted': false,
            'isQuizCompleted': false,
            'isGameCompleted': false,
          },
        },
      });

      //////////


      // Navigate to the next screen or perform any other actions
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Explainmap()),
      );
    } catch (e) {
      if (e is FirebaseAuthException && e.code == 'email-already-in-use') {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('البريد الإلكتروني مستخدم'),
              content: Text('البريد الإلكتروني موجود مسبقًا، يرجى استخدام بريد إلكتروني آخر'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('حسنا'),
                ),
              ],
            );
          },
        );
      } else {
        print('Registration error: $e');
      }
    }
  }
}


  bool isValidEmail(String email) {
    return RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$").hasMatch(email);
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
          backgroundColor: Color.fromARGB(0, 17, 7, 51),
          elevation: 0,
        ),
        resizeToAvoidBottomInset: false,
        body: SizedBox(
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
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 90.v,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.BackgroundHouse,
                            ),
                            fit: BoxFit.cover,
                          ),
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
                                  SizedBox(height: 18.v),
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
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) => Signin(),
                                                ),
                                              );
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: Text(
                                                "تسجيل الدخول",
                                                style: CustomTextStyles.bodySmall12.copyWith(
                                                  color: Colors.blue,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 1.v),
                                          SizedBox(
                                            width: 0.1.h,
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
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage23152x119,
                    height: 152.v,
                    width: 119.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 110.v),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 244.h,
                      margin: EdgeInsets.only(
                        top: 180.v,
                        right: 1.h,
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
                    imagePath: ImageConstant.imgScreenshot2023173x129,
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

  Widget _buildRegisterButtonSection(BuildContext context) {
    return CustomElevatedButton(
      height: 42.v,
      width: 177.h,
      text: "تسجيل جديد",
      buttonStyle: CustomButtonStyles.outlinePrimaryTL21,
      buttonTextStyle: theme.textTheme.bodyLarge!,
      onPressed: () {
        _registerUser(context);
      },
    );
  }
}


