// import 'package:flutter/material.dart';
// import 'package:raghad_s_razeen/core/app_export.dart';

// // ignore_for_file: must_be_immutable
// class Frame149Dialog extends StatelessWidget {
//   const Frame149Dialog({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.maxFinite,
//       padding: EdgeInsets.symmetric(
//         horizontal: 31.h,
//         vertical: 229.v,
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Spacer(),
//           _buildFrameColumn(context),
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildFrameColumn(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(
//         horizontal: 31.h,
//         vertical: 18.v,
//       ),
//       decoration: AppDecoration.fillTeal.copyWith(
//         borderRadius: BorderRadiusStyle.roundedBorder33,
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Padding(
//             padding: EdgeInsets.only(right: 2.h),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 CustomImageView(
//                   imagePath: ImageConstant.imgImage164,
//                   height: 28.v,
//                   width: 27.h,
//                   margin: EdgeInsets.only(bottom: 131.v),
//                 ),
//                 Spacer(),
//                 Container(
//                   height: 133.v,
//                   width: 145.h,
//                   margin: EdgeInsets.only(top: 25.v),
//                   child: Stack(
//                     alignment: Alignment.topRight,
//                     children: [
//                       CustomImageView(
//                         imagePath: ImageConstant.imgImg07952,
//                         height: 115.adaptSize,
//                         width: 115.adaptSize,
//                         alignment: Alignment.bottomLeft,
//                       ),
//                       CustomImageView(
//                         imagePath: ImageConstant.imgImage60,
//                         height: 68.v,
//                         width: 72.h,
//                         alignment: Alignment.topRight,
//                       ),
//                     ],
//                   ),
//                 ),
//                 CustomImageView(
//                   imagePath: ImageConstant.imgImage173,
//                   height: 20.adaptSize,
//                   width: 20.adaptSize,
//                   margin: EdgeInsets.only(
//                     left: 24.h,
//                     top: 4.v,
//                     bottom: 135.v,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 14.v),
//           SizedBox(
//             width: 100.h,
//             child: Text(
//               "أداء رائع",
//               maxLines: 2,
//               overflow: TextOverflow.ellipsis,
//               textAlign: TextAlign.center,
//               style: CustomTextStyles.headlineLargeOnSecondaryContainer,
//             ),
//           ),
//           SizedBox(height: 24.v),
//         ],
//       ),
//     );
//   }
// }
