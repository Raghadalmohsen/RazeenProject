// import 'package:flutter/material.dart';
// import 'package:raghad_s_razeen/core/app_export.dart';
// import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
// import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';

// class Frame119Screen extends StatelessWidget {
//   const Frame119Screen({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: appTheme.gray50.withOpacity(0.4),
//         appBar: _buildAppBar(context),
//         body: SizedBox(
//           width: SizeUtils.width,
//           child: SingleChildScrollView(
//             padding: EdgeInsets.only(top: 39.v),
//             child: Container(
//               height: 717.v,
//               width: 394.h,
//               margin: EdgeInsets.only(bottom: 5.v),
//               child: Stack(
//                 alignment: Alignment.bottomRight,
//                 children: [
//                   Align(
//                     alignment: Alignment.topCenter,
//                     child: Container(
//                       height: 588.v,
//                       width: 329.h,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage(
//                             ImageConstant.imgGroup994,
//                           ),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       child: Stack(
//                         alignment: Alignment.bottomLeft,
//                         children: [
//                           Align(
//                             alignment: Alignment.center,
//                             child: Card(
//                               clipBehavior: Clip.antiAlias,
//                               elevation: 0,
//                               margin: EdgeInsets.all(0),
//                               color: appTheme.blue5066,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadiusStyle.roundedBorder33,
//                               ),
//                               child: Container(
//                                 height: 574.v,
//                                 width: 329.h,
//                                 padding: EdgeInsets.symmetric(
//                                   horizontal: 14.h,
//                                   vertical: 64.v,
//                                 ),
//                                 decoration:
//                                     AppDecoration.outlinePrimary8.copyWith(
//                                   borderRadius:
//                                       BorderRadiusStyle.roundedBorder33,
//                                 ),
//                                 child: Stack(
//                                   alignment: Alignment.topRight,
//                                   children: [
//                                     Align(
//                                       alignment: Alignment.topLeft,
//                                       child: Container(
//                                         height: 90.adaptSize,
//                                         width: 90.adaptSize,
//                                         margin: EdgeInsets.only(
//                                           left: 10.h,
//                                           top: 2.v,
//                                         ),
//                                         padding: EdgeInsets.symmetric(
//                                           horizontal: 15.h,
//                                           vertical: 13.v,
//                                         ),
//                                         decoration: AppDecoration
//                                             .fillOnSecondaryContainer
//                                             .copyWith(
//                                           borderRadius:
//                                               BorderRadiusStyle.circleBorder45,
//                                         ),
//                                         child: CustomImageView(
//                                           imagePath: ImageConstant.imgImage213,
//                                           height: 60.adaptSize,
//                                           width: 60.adaptSize,
//                                           alignment: Alignment.topCenter,
//                                         ),
//                                       ),
//                                     ),
//                                     Align(
//                                       alignment: Alignment.topRight,
//                                       child: Container(
//                                         height: 90.adaptSize,
//                                         width: 90.adaptSize,
//                                         padding: EdgeInsets.all(15.h),
//                                         decoration: AppDecoration
//                                             .fillOnSecondaryContainer
//                                             .copyWith(
//                                           borderRadius:
//                                               BorderRadiusStyle.circleBorder45,
//                                         ),
//                                         child: CustomImageView(
//                                           imagePath: ImageConstant.imgImage209,
//                                           height: 60.adaptSize,
//                                           width: 60.adaptSize,
//                                           alignment: Alignment.center,
//                                         ),
//                                       ),
//                                     ),
//                                     Align(
//                                       alignment: Alignment.topLeft,
//                                       child: Container(
//                                         height: 90.adaptSize,
//                                         width: 90.adaptSize,
//                                         margin: EdgeInsets.only(
//                                           left: 10.h,
//                                           top: 164.v,
//                                         ),
//                                         decoration: BoxDecoration(
//                                           color: theme
//                                               .colorScheme.onSecondaryContainer
//                                               .withOpacity(0.85),
//                                           borderRadius: BorderRadius.circular(
//                                             45.h,
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                     Align(
//                                       alignment: Alignment.topRight,
//                                       child: Container(
//                                         height: 90.adaptSize,
//                                         width: 90.adaptSize,
//                                         margin: EdgeInsets.only(top: 164.v),
//                                         padding: EdgeInsets.symmetric(
//                                           horizontal: 12.h,
//                                           vertical: 15.v,
//                                         ),
//                                         decoration: AppDecoration
//                                             .fillOnSecondaryContainer
//                                             .copyWith(
//                                           borderRadius:
//                                               BorderRadiusStyle.circleBorder45,
//                                         ),
//                                         child: CustomImageView(
//                                           imagePath: ImageConstant.imgImage228,
//                                           height: 60.adaptSize,
//                                           width: 60.adaptSize,
//                                           alignment: Alignment.centerRight,
//                                         ),
//                                       ),
//                                     ),
//                                     Align(
//                                       alignment: Alignment.bottomLeft,
//                                       child: Container(
//                                         height: 90.adaptSize,
//                                         width: 90.adaptSize,
//                                         margin: EdgeInsets.only(
//                                           left: 10.h,
//                                           bottom: 29.v,
//                                         ),
//                                         padding: EdgeInsets.all(15.h),
//                                         decoration: AppDecoration
//                                             .fillOnSecondaryContainer
//                                             .copyWith(
//                                           borderRadius:
//                                               BorderRadiusStyle.circleBorder45,
//                                         ),
//                                         child: CustomImageView(
//                                           imagePath: ImageConstant.imgImage205,
//                                           height: 60.adaptSize,
//                                           width: 60.adaptSize,
//                                           alignment: Alignment.center,
//                                         ),
//                                       ),
//                                     ),
//                                     Align(
//                                       alignment: Alignment.bottomRight,
//                                       child: Container(
//                                         height: 90.adaptSize,
//                                         width: 90.adaptSize,
//                                         margin: EdgeInsets.only(bottom: 29.v),
//                                         padding: EdgeInsets.all(15.h),
//                                         decoration: AppDecoration
//                                             .fillOnSecondaryContainer
//                                             .copyWith(
//                                           borderRadius:
//                                               BorderRadiusStyle.circleBorder45,
//                                         ),
//                                         child: CustomImageView(
//                                           imagePath: ImageConstant.imgImage229,
//                                           height: 60.adaptSize,
//                                           width: 60.adaptSize,
//                                           alignment: Alignment.center,
//                                         ),
//                                       ),
//                                     ),
//                                     CustomImageView(
//                                       imagePath: ImageConstant
//                                           .imgArrow12Primary127x119,
//                                       height: 127.v,
//                                       width: 119.h,
//                                       alignment: Alignment.topCenter,
//                                       margin: EdgeInsets.only(top: 78.v),
//                                     ),
//                                     CustomImageView(
//                                       imagePath: ImageConstant
//                                           .imgArrow12Primary127x119,
//                                       height: 124.v,
//                                       width: 117.h,
//                                       alignment: Alignment.bottomCenter,
//                                       margin: EdgeInsets.only(bottom: 85.v),
//                                     ),
//                                     CustomImageView(
//                                       imagePath: ImageConstant
//                                           .imgArrow13Primary276x124,
//                                       height: 276.v,
//                                       width: 124.h,
//                                       alignment: Alignment.topRight,
//                                       margin: EdgeInsets.only(
//                                         top: 75.v,
//                                         right: 80.h,
//                                       ),
//                                     ),
//                                     CustomImageView(
//                                       imagePath: ImageConstant.imgImage204,
//                                       height: 90.adaptSize,
//                                       width: 90.adaptSize,
//                                       alignment: Alignment.topLeft,
//                                       margin: EdgeInsets.only(
//                                         left: 10.h,
//                                         top: 164.v,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.bottomLeft,
//                             child: Container(
//                               height: 58.v,
//                               width: 301.h,
//                               decoration: BoxDecoration(
//                                 color: appTheme.yellow100.withOpacity(0.95),
//                                 borderRadius: BorderRadius.circular(
//                                   29.h,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           CustomImageView(
//                             imagePath: ImageConstant.imgImage167,
//                             height: 28.v,
//                             width: 27.h,
//                             alignment: Alignment.bottomLeft,
//                             margin: EdgeInsets.only(
//                               left: 18.h,
//                               bottom: 40.v,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   CustomImageView(
//                     imagePath: ImageConstant.imgImage23114x111,
//                     height: 114.v,
//                     width: 111.h,
//                     alignment: Alignment.bottomRight,
//                     margin: EdgeInsets.only(bottom: 113.v),
//                   ),
//                   CustomImageView(
//                     imagePath: ImageConstant.imgOutput13,
//                     height: 134.v,
//                     width: 128.h,
//                     alignment: Alignment.bottomLeft,
//                   ),
//                   Align(
//                     alignment: Alignment.bottomLeft,
//                     child: Container(
//                       width: 256.h,
//                       margin: EdgeInsets.only(
//                         left: 63.h,
//                         bottom: 111.v,
//                       ),
//                       decoration: AppDecoration.outlinePrimary3,
//                       child: Text(
//                         "صِل الأدوات التي كان يستخدمها\n جدك بشكلها الحديث  ",
//                         maxLines: null,
//                         overflow: TextOverflow.ellipsis,
//                         style: CustomTextStyles.titleMediumBlack,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   /// Section Widget
//   PreferredSizeWidget _buildAppBar(BuildContext context) {
//     return CustomAppBar(
//       leadingWidth: 394.h,
//       leading: AppbarLeadingImage(
//         imagePath: ImageConstant.imgArrow3,
//         margin: EdgeInsets.fromLTRB(24.h, 26.v, 323.h, 26.v),
//       ),
//     );
//   }
// }
