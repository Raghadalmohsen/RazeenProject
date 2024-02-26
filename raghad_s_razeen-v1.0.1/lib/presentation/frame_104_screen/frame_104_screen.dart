// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:raghad_s_razeen/core/app_export.dart';
// import 'package:raghad_s_razeen/presentation/forgetpass.dart';
// import 'package:raghad_s_razeen/presentation/frame_103_screen/frame_103_screen.dart';
// import 'package:raghad_s_razeen/presentation/frame_105_screen/frame_105_screen.dart';
// import 'package:raghad_s_razeen/presentation/frame_106_screen/frame_106_screen.dart';
// import 'package:raghad_s_razeen/presentation/frame_eightyseven_screen/frame_eightyseven_screen.dart';
// import 'package:raghad_s_razeen/presentation/initialscreen.dart';
// import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
// import 'package:raghad_s_razeen/widgets/custom_text_form_field.dart';
// //
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// //

// class Frame104Screen extends StatelessWidget {
//   //تسجيل دخول
//   Frame104Screen({Key? key})
//       : super(
//           key: key,
//         );

//   TextEditingController emailController = TextEditingController();

//   TextEditingController passwordController = TextEditingController();

//   GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   //

//   void _signInUser(BuildContext context) async {
//     if (_formKey.currentState!.validate()) {
//       // Validation successful, perform sign-in logic here
//       String email = emailController.text;
//       String password = passwordController.text;

//       try {
        
//         await FirebaseAuth.instance.signInWithEmailAndPassword(
//           email: email,
//           password: password,
//         );

//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => FrameEightysevenScreen()),
//         );
//       } catch (e) {
//         // Handle any errors that occur during sign-in
//         print('Sign-in error: $e');
//         showDialog(
//             context: context,
//             builder: (BuildContext context) {
//               return AlertDialog(
//                 title: Text('خطأ'),
//                 content: Text('أوه لا! يبدو أنك لم تقم بإنشاء حساب بعد يرجى إنشاء حساب جديد للاستمتاع بالمرح والتعلم معنا'),
//                 actions: <Widget>[
//                   TextButton(
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                     child: Text('حسنا'),
//                   ),
//                 ],
//               );
//             },
//           );
//         // You can show an error message to the user if desired
//       }
//     }
//   }

//   //

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         extendBodyBehindAppBar: true, //زر الرجوع
//         appBar: AppBar(
//           // 1. Back Arrow Icon
//           leading: IconButton(
//               iconSize: 40,
//               icon: Icon(Icons.arrow_back),
//               color: Color.fromARGB(255, 16, 27, 79), // forword لو نبيه يمين
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) =>
//                           Initialscreen()), ////للصفحة الرئيسية
//                 );
//               }),
//           backgroundColor: Color.fromARGB(0, 255, 255, 255),
//           elevation: 0,
//         ),

//         resizeToAvoidBottomInset: false,
//         body: Form(
//           key: _formKey,
//           child: SizedBox(
//             height: SizeUtils.height,
//             width: double.maxFinite,
//             child: Stack(
//               alignment: Alignment.topRight,
//               children: [
//                 CustomImageView(
//                   imagePath: ImageConstant.BackgroundHouse, // خلفية صورة
//                   height: 858.v,
//                   width: 393.h,
//                   border: Border.all(),
//                   alignment: Alignment.center,
//                 ),
//                 Align(
//                   alignment: Alignment.bottomCenter,
//                   // child: SingleChildScrollView(
//                   child: Container(
//                     height: 794.v,
//                     width: double.maxFinite,
//                     margin: EdgeInsets.only(bottom: 5.v), //19 كان
//                     child: Stack(
//                       alignment: Alignment.topRight,
//                       children: [
//                         //
//                         Align(
//                           alignment: Alignment.center,
//                           child: Padding(
//                             padding: EdgeInsets.only(
//                                 left: 20.h, right: 29.h, bottom: 65),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 SizedBox(height: 75.v),
//                                 Container(
//                                   margin: EdgeInsets.only(left: 6.h),
//                                   padding: EdgeInsets.symmetric(
//                                     horizontal: 22.h,
//                                     vertical: 90.v,
//                                   ),
//                                   decoration:
//                                       AppDecoration.outlinePrimary7.copyWith(
//                                     borderRadius:
//                                         BorderRadiusStyle.roundedBorder33,
//                                   ),
//                                   child: Column(
//                                     mainAxisSize: MainAxisSize.min,
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     children: [
//                                       SizedBox(height: 15.v),
//                                       CustomTextFormField(
//                                         controller: emailController,
//                                         hintText:
//                                             "                     البريد الإلكتروني",
//                                         hintStyle: theme.textTheme.titleLarge!,
//                                         contentPadding: EdgeInsets.symmetric(
//                                           horizontal: 10.h,
//                                           vertical: 19.v,
//                                         ),
//                                         borderDecoration:
//                                             TextFormFieldStyleHelper
//                                                 .outlinePrimary,
//                                       ),
//                                       SizedBox(height: 18.v),
//                                       CustomTextFormField(
//                                         controller: passwordController,
//                                         hintText:
//                                             "                              كلمة المرور",
//                                         hintStyle: theme.textTheme.titleLarge!,
//                                         textInputAction: TextInputAction.done,
//                                         textInputType:
//                                             TextInputType.visiblePassword,
//                                         obscureText: true,
//                                         contentPadding: EdgeInsets.only(
//                                           top: 19.v,
//                                           right: 21.h,
//                                           bottom: 19.v,
//                                         ),
//                                         borderDecoration:
//                                             TextFormFieldStyleHelper
//                                                 .outlinePrimary,
//                                       ),
//                                       SizedBox(height: 7.v),
//                                       Align(
//                                         alignment: Alignment.centerLeft,
//                                         child: Container(
//                                           margin: EdgeInsets.only(left: 7.h),
//                                           decoration:
//                                               AppDecoration.outlinePrimary3,
//                                           child: CupertinoButton(
//                                             child: Text(
//                                               "نسيت كلمة المرور؟",
//                                               style:
//                                                   CustomTextStyles.bodySmall12,
//                                             ),
//                                             onPressed: () {
//                                               //بداية كود تنقل الزر
//                                               Navigator.push(
//                                                 context,
//                                                 CupertinoPageRoute(
//                                                     builder: (context) =>
//                                                         Forgetpass()),
//                                               );
//                                             }, //نهاية ا
//                                           ),
//                                         ),
//                                       ),
//                                       SizedBox(height: 49.v),
//                                       CustomElevatedButton(
// //
//                                           onPressed: () => _signInUser(context),
                                       
// //
//                                         height: 42.v,
//                                         width: 177.h,
//                                         text: "تسجيل الدخول",
//                                         buttonStyle: CustomButtonStyles
//                                             .outlinePrimaryTL21,
//                                         buttonTextStyle:
//                                             theme.textTheme.bodyLarge!,
//                                       ),
//                                       SizedBox(height: 7.v),
//                                       Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.center,
//                                         children: [
//                                           Column(
//                                             children: [
//                                               Container(
//                                                 decoration: AppDecoration
//                                                     .outlinePrimary3,
//                                                 child: CupertinoButton(
//                                                   //اضافي مع زر التنقل
//                                                   child: Text(
//                                                     "تسجيل جديد",
//                                                     style: CustomTextStyles
//                                                         .bodySmall12
//                                                         .copyWith(
//                                                       color: Colors
//                                                           .blue, // Change the color to indicate it's tappable
//                                                     ),
//                                                   ),
//                                                   onPressed: () {
//                                                     //بداية كود تنقل الزر
//                                                     Navigator.push(
//                                                       context,
//                                                       CupertinoPageRoute(
//                                                           builder: (context) =>
//                                                               Frame105Screen()), //next page
//                                                     );
//                                                   }, //نهاية ا
//                                                 ),
//                                               ),
//                                               SizedBox(height: 1.v),
//                                               SizedBox(
//                                                 width: 65.h,
//                                                 // child: Divider(
//                                                 //   //نعدل مكان الخط
//                                                 //   color: appTheme.blueGray700
//                                                 //       .withOpacity(0.84),
//                                                 // ),
//                                               ),
//                                             ],
//                                           ),
//                                           Padding(
//                                             padding:
//                                                 EdgeInsets.only(left: 13.h),
//                                             child: Text(
//                                               "ليس لديك حساب؟", //تسجيل جديد
//                                               style:
//                                                   CustomTextStyles.bodySmall12,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         CustomImageView(
//                           imagePath: ImageConstant.imgImage23152x119, //النجمة
//                           height: 152.v,
//                           width: 119.h,
//                           alignment: Alignment.topRight,
//                           margin: EdgeInsets.only(top: 44.v),
//                         ),
//                         Align(
//                           alignment: Alignment.topRight,
//                           child: Container(
//                             width: 244.h,
//                             margin: EdgeInsets.only(
//                               top: 175.v,
//                               right: 31.h,
//                             ),
//                             decoration: AppDecoration.outlinePrimary3,
//                             child: Text(
//                               "تسجيل الدخول",
//                               maxLines: null,
//                               overflow: TextOverflow.ellipsis,
//                               style: CustomTextStyles.headlineLarge32,
//                             ),
//                           ),
//                         ),
//                         CustomImageView(
//                           imagePath:
//                               ImageConstant.imgScreenshot2023173x129, //الجد
//                           height: 206.v,
//                           width: 150.h,
//                           alignment: Alignment.bottomLeft,
//                           margin: EdgeInsets.only(bottom: 1.v), //13 كان
//                         ),
//                       ],
//                     ),
//                   ),
//                   // ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
