// import 'package:flutter/material.dart';
// import 'package:raghad_s_razeen/core/app_export.dart';
// import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
// import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';

// class Frame113Screen extends StatelessWidget {
//   const Frame113Screen({Key? key})
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
//             padding: EdgeInsets.only(top: 40.v),
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
//                       height: 605.v,
//                       width: 329.h,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage(
//                             ImageConstant.imgGroup834,
//                           ),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       child: Stack(
//                         alignment: Alignment.bottomLeft,
//                         children: [
//                           Align(
//                             alignment: Alignment.topCenter,
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
//                                   horizontal: 30.h,
//                                   vertical: 24.v,
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
//                                       alignment: Alignment.topRight,
//                                       child: Container(
//                                         height: 90.adaptSize,
//                                         width: 90.adaptSize,
//                                         margin: EdgeInsets.only(right: 1.h),
//                                         padding: EdgeInsets.all(15.h),
//                                         decoration: AppDecoration
//                                             .fillOnSecondaryContainer
//                                             .copyWith(
//                                           borderRadius:
//                                               BorderRadiusStyle.circleBorder45,
//                                         ),
//                                         child: CustomImageView(
//                                           imagePath: ImageConstant.imgImage27,
//                                           height: 60.adaptSize,
//                                           width: 60.adaptSize,
//                                           alignment: Alignment.center,
//                                         ),
//                                       ),
//                                     ),
//                                     Align(
//                                       alignment: Alignment.topRight,
//                                       child: Container(
//                                         height: 90.adaptSize,
//                                         width: 90.adaptSize,
//                                         margin: EdgeInsets.only(
//                                           top: 188.v,
//                                           right: 1.h,
//                                         ),
//                                         padding: EdgeInsets.symmetric(
//                                           horizontal: 15.h,
//                                           vertical: 11.v,
//                                         ),
//                                         decoration: AppDecoration
//                                             .fillOnSecondaryContainer
//                                             .copyWith(
//                                           borderRadius:
//                                               BorderRadiusStyle.circleBorder45,
//                                         ),
//                                         child: CustomImageView(
//                                           imagePath: ImageConstant.imgImage22,
//                                           height: 60.adaptSize,
//                                           width: 60.adaptSize,
//                                           alignment: Alignment.topCenter,
//                                         ),
//                                       ),
//                                     ),
//                                     Align(
//                                       alignment: Alignment.bottomRight,
//                                       child: Container(
//                                         height: 90.adaptSize,
//                                         width: 90.adaptSize,
//                                         margin: EdgeInsets.only(
//                                           right: 1.h,
//                                           bottom: 72.v,
//                                         ),
//                                         padding: EdgeInsets.all(15.h),
//                                         decoration: AppDecoration
//                                             .fillOnSecondaryContainer
//                                             .copyWith(
//                                           borderRadius:
//                                               BorderRadiusStyle.circleBorder45,
//                                         ),
//                                         child: CustomImageView(
//                                           imagePath: ImageConstant.imgImage49,
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
//                                         margin: EdgeInsets.only(top: 188.v),
//                                         padding: EdgeInsets.all(15.h),
//                                         decoration: AppDecoration
//                                             .fillOnSecondaryContainer
//                                             .copyWith(
//                                           borderRadius:
//                                               BorderRadiusStyle.circleBorder45,
//                                         ),
//                                         child: CustomImageView(
//                                           imagePath: ImageConstant.imgImage24,
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
//                                         padding: EdgeInsets.symmetric(
//                                           horizontal: 13.h,
//                                           vertical: 15.v,
//                                         ),
//                                         decoration: AppDecoration
//                                             .fillOnSecondaryContainer
//                                             .copyWith(
//                                           borderRadius:
//                                               BorderRadiusStyle.circleBorder45,
//                                         ),
//                                         child: CustomImageView(
//                                           imagePath: ImageConstant.imgImage50,
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
//                                         margin: EdgeInsets.only(bottom: 72.v),
//                                         padding: EdgeInsets.all(15.h),
//                                         decoration: AppDecoration
//                                             .fillOnSecondaryContainer
//                                             .copyWith(
//                                           borderRadius:
//                                               BorderRadiusStyle.circleBorder45,
//                                         ),
//                                         child: CustomImageView(
//                                           imagePath: ImageConstant.imgImg08422,
//                                           height: 60.adaptSize,
//                                           width: 60.adaptSize,
//                                           alignment: Alignment.center,
//                                         ),
//                                       ),
//                                     ),
//                                     CustomImageView(
//                                       imagePath: ImageConstant.imgArrow14,
//                                       height: 107.v,
//                                       width: 120.h,
//                                       alignment: Alignment.bottomLeft,
//                                       margin: EdgeInsets.only(
//                                         left: 66.h,
//                                         bottom: 156.v,
//                                       ),
//                                     ),
//                                     CustomImageView(
//                                       imagePath: ImageConstant.imgArrow12,
//                                       height: 124.v,
//                                       width: 109.h,
//                                       alignment: Alignment.topCenter,
//                                       margin: EdgeInsets.only(top: 75.v),
//                                     ),
//                                     CustomImageView(
//                                       imagePath: ImageConstant.imgArrow13,
//                                       height: 280.v,
//                                       width: 141.h,
//                                       alignment: Alignment.topLeft,
//                                       margin: EdgeInsets.only(
//                                         left: 55.h,
//                                         top: 90.v,
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
//                               margin: EdgeInsets.only(bottom: 17.v),
//                               decoration: BoxDecoration(
//                                 color: appTheme.yellow100.withOpacity(0.95),
//                                 borderRadius: BorderRadius.circular(
//                                   29.h,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.bottomLeft,
//                             child: Container(
//                               width: 256.h,
//                               margin: EdgeInsets.only(left: 30.h),
//                               decoration: AppDecoration.outlinePrimary3,
//                               child: Text(
//                                 "صِل  بالمكان الصحيح ..\n للحفاظ على سلامة المكان",
//                                 maxLines: null,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: CustomTextStyles.titleMediumBlack,
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
//                               bottom: 57.v,
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
//         margin: EdgeInsets.fromLTRB(22.h, 26.v, 325.h, 26.v),
//       ),
//     );
//   }
// }
