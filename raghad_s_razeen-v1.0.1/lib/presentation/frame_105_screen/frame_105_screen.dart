import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/frame_eightyseven_screen/frame_eightyseven_screen.dart';
import 'package:raghad_s_razeen/presentation/initialscreen.dart';
import 'package:raghad_s_razeen/presentation/signin.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
import 'package:raghad_s_razeen/widgets/custom_text_form_field.dart';

class Frame105Screen extends StatefulWidget {
  @override
  _Frame105ScreenState createState() => _Frame105ScreenState();
}

class _Frame105ScreenState extends State<Frame105Screen> {
  TextEditingController emailSectionController = TextEditingController();
  TextEditingController passwordSectionController = TextEditingController();
  String email = '';
  String password = '';

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailSectionController.dispose();
    passwordSectionController.dispose();
    super.dispose();
  }

  Widget _buildEmailSection(BuildContext context) {
    return TextFormField(
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

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => FrameEightysevenScreen()),
        );
      } catch (e) {
        print('Registration error: $e');
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
              }),
          backgroundColor: Color.fromARGB(0, 17, 7, 51),
          elevation: 0,
        ),

        resizeToAvoidBottomInset: false,

        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,

          // child: SingleChildScrollView(
          //   padding: EdgeInsets.only(
          //     bottom: MediaQuery.of(context).viewInsets.bottom,
          //   ),
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
                    child: SingleChildScrollView(
                      //for overflow
                      physics: NeverScrollableScrollPhysics(),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 20.h,
                          vertical: 45.v,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(),
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.BackgroundHouse,
                              //الخلفيه
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 200.v), //كان 75 غيرناه عشان تضبظ الخلفية
                            Container(
                              margin: EdgeInsets.only(left: 6.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 22.h,
                                vertical: 90.v,
                              ),
                              decoration:
                                  AppDecoration.outlinePrimary7.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder33,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // SizedBox(height: 15.v),
                                  // _buildNameSection(context), // no need name*****************
                                  SizedBox(height: 18.v),
                                  _buildEmailSection(context),
                                  SizedBox(height: 19.v),
                                  _buildPasswordSection(context),
                                  SizedBox(height: 37.v),
                                  _buildRegisterButtonSection(context),
                                  SizedBox(height: 8.v),
                                  //new
                                  // ElevatedButton(
                                  //   onPressed: () => _registerUser(context),
                                  //   child: Text('Register'),
                                  // ),
                                  //
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    //                  child: SingleChildScrollView(//for overflow
                                    // physics: NeverScrollableScrollPhysics(),

                                    child: Padding(
                                      padding: EdgeInsets.only(left: 60.h),
                                      child: Row(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Signin()), 
                                              );
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.all(
                                                  8.0), 
                                              child: Text(
                                                "تسجيل الدخول",
                                                style: CustomTextStyles
                                                    .bodySmall12
                                                    .copyWith(
                                                  color: Colors
                                                      .blue, 
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 1.v),
                                          SizedBox(
                                            width: 0.1.h,
                                            
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsets.only(left: 16.h),
                                            child: Text(
                                              "لديك حساب؟",
                                              style:
                                                  CustomTextStyles.bodySmall12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),

                                    // ),
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
                    imagePath: ImageConstant.imgImage23152x119, //النجمة
                    height: 152.v,
                    width: 119.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 100.v), //كان 44 نزلناها
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
                    imagePath: ImageConstant.imgScreenshot2023173x129, //الجد
                    height: 206.v,
                    width: 150.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(bottom: 13.v),
                  ),
                ],
              ),
            ),
          ),
          // ),
        ),
      ),
    );
  }

  /// Section Widget //no need name
  // Widget _buildNameSection(BuildContext context) {
  //   return CustomTextFormField(
  //     controller: nameSectionController,
  //     hintText: "                                الإسم",
  //     hintStyle: theme.textTheme.titleLarge!,
  //     contentPadding: EdgeInsets.symmetric(
  //       horizontal: 30.h,
  //       vertical: 19.v,
  //     ),
  //     borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
  //   );
  // }

  /// Section Widget
  // Widget _buildEmailSection(BuildContext context) {
  //   return CustomTextFormField(
  //     controller: emailSectionController,
  //     hintText: "                       البريد الإلكتروني",
  //     hintStyle: theme.textTheme.titleLarge!,
  //     contentPadding: EdgeInsets.symmetric(
  //       horizontal: 8.h,
  //       vertical: 17.v,
  //     ),
  //     borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
  //   );
  // }

  //new
//   Widget _buildEmailSection(BuildContext context) {
//     return CustomTextFormField(
//       controller: emailSectionController,
//       hintText: "                       البريد الإلكتروني",
//       hintStyle: theme.textTheme.titleLarge!,
//       contentPadding: EdgeInsets.symmetric(
//         horizontal: 8.h,
//         vertical: 17.v,
//       ),
//       borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
//       onChanged: (value) {
//         email = value; // Update the email variable when the text changes
//       },
//     );
//   }

//   /// Section Widget
//   // Widget _buildPasswordSection(BuildContext context) {
//   //   return CustomTextFormField(
//   //     controller: passwordSectionController,
//   //     hintText: "                               كلمة المرور",
//   //     hintStyle: theme.textTheme.titleLarge!,
//   //     textInputAction: TextInputAction.done,
//   //     textInputType: TextInputType.visiblePassword,
//   //     obscureText: true,
//   //     contentPadding: EdgeInsets.only(
//   //       top: 19.v,
//   //       right: 21.h,
//   //       bottom: 19.v,
//   //     ),
//   //     borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
//   //   );
//   // }
//   //new

//    Widget _buildPasswordSection(BuildContext context) {
//     return CustomTextFormField(
//       controller: passwordSectionController,
//       hintText: "                               كلمة المرور",
//       hintStyle: theme.textTheme.titleLarge!,
//       textInputAction: TextInputAction.done,
//       textInputType: TextInputType.visiblePassword,
//       obscureText: true,
//       contentPadding: EdgeInsets.only(
//         top: 19.v,
//         right: 21.h,
//         bottom: 19.v,
//       ),
//       borderDecoration: TextFormFieldStyleHelper.outlinePrimary,
//       onChanged: (value) {
//         password = value; // Update the password variable when the text changes
//       },
//     );
//   }

//   /// Section Widget
//   // Widget _buildRegisterButtonSection(BuildContext context) {
//   //   return CustomElevatedButton(
//   //     height: 42.v,
//   //     width: 177.h,
//   //     text: "تسجيل جديد",
//   //     buttonStyle: CustomButtonStyles.outlinePrimaryTL21,
//   //     buttonTextStyle: theme.textTheme.bodyLarge!,
//   //   );
//   // }

// //new
Widget _buildRegisterButtonSection(BuildContext context) {
  return CustomElevatedButton(
    height: 42.v,
    width: 177.h,
    text: "تسجيل جديد",
    buttonStyle: CustomButtonStyles.outlinePrimaryTL21,
    buttonTextStyle: theme.textTheme.bodyLarge!,
    onPressed: () {
      _registerUser(context); // Pass the context object to the function
    },
  );
}

//  void _registerUser(BuildContext context) async {
//     if (_formKey.currentState!.validate()) {
//       _formKey.currentState!.save();

//       try {
//         UserCredential userCredential = await FirebaseAuth.instance
//             .createUserWithEmailAndPassword(email: email, password: password);

//         // Registration successful, navigate to the desired screen
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => Frame104Screen()),
//         );
//       } catch (e) {
//         // Handle any errors that occur during registration
//         print('Registration error: $e');
//         // You can show an error message to the user if desired
//       }
//     }
//   }
}
