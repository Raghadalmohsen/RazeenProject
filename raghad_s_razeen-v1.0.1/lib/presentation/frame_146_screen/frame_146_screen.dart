// import 'package:flutter/material.dart';
// import 'package:raghad_s_razeen/core/app_export.dart';
// import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
// import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';

// class Frame146Screen extends StatelessWidget {
//   const Frame146Screen({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: theme.colorScheme.primary.withOpacity(1),
//         appBar: _buildAppBar(context),
//         body: Container(
//           width: double.maxFinite,
//           padding: EdgeInsets.symmetric(
//             horizontal: 48.h,
//             vertical: 16.v,
//           ),
//           child: Column(
//             children: [
//               Spacer(
//                 flex: 48,
//               ),
//               SizedBox(
//                 height: 186.v,
//                 width: 296.h,
//                 child: Stack(
//                   alignment: Alignment.topLeft,
//                   children: [
//                     CustomImageView(
//                       imagePath: ImageConstant.img3eb3fd33C9524,
//                       height: 186.v,
//                       width: 296.h,
//                       alignment: Alignment.center,
//                     ),
//                     Align(
//                       alignment: Alignment.topLeft,
//                       child: Padding(
//                         padding: EdgeInsets.only(
//                           left: 27.h,
//                           top: 20.v,
//                           right: 167.h,
//                         ),
//                         child: Column(
//                           mainAxisSize: MainAxisSize.min,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Align(
//                               alignment: Alignment.centerRight,
//                               child: SizedBox(
//                                 height: 30.v,
//                                 width: 81.h,
//                                 child: Stack(
//                                   alignment: Alignment.centerRight,
//                                   children: [
//                                     Align(
//                                       alignment: Alignment.center,
//                                       child: Container(
//                                         height: 24.v,
//                                         width: 81.h,
//                                         decoration: BoxDecoration(
//                                           color: appTheme.gray400,
//                                         ),
//                                       ),
//                                     ),
//                                     Align(
//                                       alignment: Alignment.centerRight,
//                                       child: Text(
//                                         "Razeen",
//                                         style: CustomTextStyles
//                                             .titleLargeBalooChettan2PrimaryContainer,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             SizedBox(height: 18.v),
//                             SizedBox(
//                               height: 25.v,
//                               width: 51.h,
//                               child: Stack(
//                                 alignment: Alignment.bottomRight,
//                                 children: [
//                                   Align(
//                                     alignment: Alignment.topCenter,
//                                     child: Container(
//                                       height: 24.v,
//                                       width: 51.h,
//                                       decoration: BoxDecoration(
//                                         color: appTheme.gray400,
//                                       ),
//                                     ),
//                                   ),
//                                   Align(
//                                     alignment: Alignment.bottomRight,
//                                     child: Text(
//                                       "Razeen",
//                                       style: CustomTextStyles
//                                           .bodyMediumBalooChettan2PrimaryContainer,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Spacer(
//                 flex: 51,
//               ),
//               CustomImageView(
//                 imagePath: ImageConstant.imgWhatsappImage,
//                 height: 84.v,
//                 width: 85.h,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   /// Section Widget
//   PreferredSizeWidget _buildAppBar(BuildContext context) {
//     return CustomAppBar(
//       leadingWidth: double.maxFinite,
//       leading: AppbarLeadingImage(
//         imagePath: ImageConstant.imageNotFound,
//         margin: EdgeInsets.fromLTRB(24.h, 26.v, 339.h, 26.v),
//       ),
//     );
//   }
// }
