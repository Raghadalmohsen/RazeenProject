// import 'package:flutter/material.dart';
// import 'package:raghad_s_razeen/core/app_export.dart';
// import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
// import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';

// class Frame116Screen extends StatelessWidget {
//   const Frame116Screen({Key? key})
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
//             padding: EdgeInsets.only(top: 41.v),
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
//                       width: 338.h,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage(
//                             ImageConstant.imgGroup878,
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
//                                   horizontal: 17.h,
//                                   vertical: 40.v,
//                                 ),
//                                 decoration:
//                                     AppDecoration.outlinePrimary8.copyWith(
//                                   borderRadius:
//                                       BorderRadiusStyle.roundedBorder33,
//                                 ),
//                                 child: Stack(
//                                   alignment: Alignment.bottomRight,
//                                   children: [
//                                     Align(
//                                       alignment: Alignment.topRight,
//                                       child: Padding(
//                                         padding: EdgeInsets.only(
//                                           left: 194.h,
//                                           right: 11.h,
//                                         ),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.min,
//                                           children: [
//                                             Container(
//                                               height: 90.adaptSize,
//                                               width: 90.adaptSize,
//                                               padding: EdgeInsets.symmetric(
//                                                 horizontal: 15.h,
//                                                 vertical: 14.v,
//                                               ),
//                                               decoration: AppDecoration
//                                                   .fillOnSecondaryContainer
//                                                   .copyWith(
//                                                 borderRadius: BorderRadiusStyle
//                                                     .circleBorder45,
//                                               ),
//                                               child: CustomImageView(
//                                                 imagePath:
//                                                     ImageConstant.imgImage192,
//                                                 height: 60.adaptSize,
//                                                 width: 60.adaptSize,
//                                                 alignment: Alignment.topCenter,
//                                               ),
//                                             ),
//                                             SizedBox(height: 46.v),
//                                             Container(
//                                               height: 90.adaptSize,
//                                               width: 90.adaptSize,
//                                               padding: EdgeInsets.symmetric(
//                                                 horizontal: 14.h,
//                                                 vertical: 11.v,
//                                               ),
//                                               decoration: AppDecoration
//                                                   .fillOnSecondaryContainer
//                                                   .copyWith(
//                                                 borderRadius: BorderRadiusStyle
//                                                     .circleBorder45,
//                                               ),
//                                               child: CustomImageView(
//                                                 imagePath:
//                                                     ImageConstant.imgImage142,
//                                                 height: 60.adaptSize,
//                                                 width: 60.adaptSize,
//                                                 alignment: Alignment.topCenter,
//                                               ),
//                                             ),
//                                             SizedBox(height: 32.v),
//                                             Container(
//                                               height: 90.adaptSize,
//                                               width: 90.adaptSize,
//                                               padding: EdgeInsets.all(15.h),
//                                               decoration: AppDecoration
//                                                   .fillOnSecondaryContainer
//                                                   .copyWith(
//                                                 borderRadius: BorderRadiusStyle
//                                                     .circleBorder45,
//                                               ),
//                                               child: CustomImageView(
//                                                 imagePath:
//                                                     ImageConstant.imgImage186,
//                                                 height: 60.adaptSize,
//                                                 width: 60.adaptSize,
//                                                 alignment: Alignment.center,
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                     Align(
//                                       alignment: Alignment.bottomRight,
//                                       child: Container(
//                                         height: 90.adaptSize,
//                                         width: 90.adaptSize,
//                                         margin: EdgeInsets.only(
//                                           right: 16.h,
//                                           bottom: 24.v,
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
//                                       child: Padding(
//                                         padding: EdgeInsets.only(
//                                           left: 135.h,
//                                           top: 57.v,
//                                           right: 101.h,
//                                         ),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.min,
//                                           children: [
//                                             CustomImageView(
//                                               imagePath:
//                                                   ImageConstant.imgArrowLeft,
//                                               height: 92.v,
//                                               width: 59.h,
//                                             ),
//                                             SizedBox(
//                                               height: 148.v,
//                                               width: 59.h,
//                                               child: Stack(
//                                                 alignment:
//                                                     Alignment.bottomRight,
//                                                 children: [
//                                                   CustomImageView(
//                                                     imagePath: ImageConstant
//                                                         .imgArrow16,
//                                                     height: 131.v,
//                                                     width: 54.h,
//                                                     alignment:
//                                                         Alignment.topLeft,
//                                                   ),
//                                                   CustomImageView(
//                                                     imagePath: ImageConstant
//                                                         .imgArrow15,
//                                                     height: 118.v,
//                                                     width: 55.h,
//                                                     alignment:
//                                                         Alignment.bottomRight,
//                                                   ),
//                                                 ],
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                     CustomImageView(
//                                       imagePath:
//                                           ImageConstant.imgArrow14Primary,
//                                       height: 115.v,
//                                       width: 42.h,
//                                       alignment: Alignment.bottomRight,
//                                       margin: EdgeInsets.only(
//                                         right: 113.h,
//                                         bottom: 82.v,
//                                       ),
//                                     ),
//                                     Align(
//                                       alignment: Alignment.topLeft,
//                                       child: Padding(
//                                         padding: EdgeInsets.only(
//                                           top: 113.v,
//                                           right: 165.h,
//                                         ),
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.min,
//                                           children: [
//                                             Container(
//                                               height: 85.v,
//                                               width: 130.h,
//                                               padding: EdgeInsets.symmetric(
//                                                 horizontal: 51.h,
//                                                 vertical: 17.v,
//                                               ),
//                                               decoration: AppDecoration
//                                                   .fillOnSecondaryContainer1
//                                                   .copyWith(
//                                                 borderRadius: BorderRadiusStyle
//                                                     .roundedBorder5,
//                                               ),
//                                               child: CustomImageView(
//                                                 imagePath:
//                                                     ImageConstant.imgImage198,
//                                                 height: 25.adaptSize,
//                                                 width: 25.adaptSize,
//                                                 alignment:
//                                                     Alignment.bottomRight,
//                                               ),
//                                             ),
//                                             SizedBox(height: 73.v),
//                                             Container(
//                                               height: 85.v,
//                                               width: 130.h,
//                                               decoration: BoxDecoration(
//                                                 color: theme.colorScheme
//                                                     .onSecondaryContainer
//                                                     .withOpacity(0.9),
//                                                 borderRadius:
//                                                     BorderRadius.circular(
//                                                   5.h,
//                                                 ),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
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
//                               margin: EdgeInsets.only(
//                                 left: 9.h,
//                                 bottom: 17.v,
//                               ),
//                               decoration: BoxDecoration(
//                                 color: appTheme.yellow100.withOpacity(0.95),
//                                 borderRadius: BorderRadius.circular(
//                                   29.h,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.bottomCenter,
//                             child: Container(
//                               width: 256.h,
//                               decoration: AppDecoration.outlinePrimary3,
//                               child: Text(
//                                 "صِل  بالمكان الصحيح ..\n للحفاظ على هدوء المكان",
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
//                               left: 27.h,
//                               bottom: 57.v,
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.topLeft,
//                             child: Container(
//                               margin: EdgeInsets.only(top: 167.v),
//                               decoration: AppDecoration.outlinePrimary3,
//                               child: Text(
//                                 "مصدر للإزعاج",
//                                 style: CustomTextStyles.titleMediumBlack,
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: Alignment.bottomLeft,
//                             child: Container(
//                               width: 182.h,
//                               margin: EdgeInsets.only(bottom: 238.v),
//                               decoration: AppDecoration.outlinePrimary3,
//                               child: Text(
//                                 "ليس\n مصدر للإزعاج",
//                                 maxLines: null,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: theme.textTheme.titleSmall,
//                               ),
//                             ),
//                           ),
//                           CustomImageView(
//                             imagePath: ImageConstant.imgImage195,
//                             height: 25.adaptSize,
//                             width: 25.adaptSize,
//                             alignment: Alignment.bottomLeft,
//                             margin: EdgeInsets.only(
//                               left: 80.h,
//                               bottom: 217.v,
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
//                   CustomImageView(
//                     imagePath: ImageConstant.imgImage190,
//                     height: 60.adaptSize,
//                     width: 60.adaptSize,
//                     alignment: Alignment.bottomRight,
//                     margin: EdgeInsets.only(
//                       right: 81.h,
//                       bottom: 222.v,
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
//         margin: EdgeInsets.fromLTRB(25.h, 26.v, 322.h, 26.v),
//       ),
//     );
//   }
// }
