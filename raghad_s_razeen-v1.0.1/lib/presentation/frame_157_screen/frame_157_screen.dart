// import 'package:flutter/material.dart';
// import 'package:raghad_s_razeen/core/app_export.dart';
// import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
// import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';

// class Frame157Screen extends StatelessWidget {
//   const Frame157Screen({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         extendBody: true,
//         extendBodyBehindAppBar: true,
//         backgroundColor: theme.colorScheme.onSecondaryContainer.withOpacity(1),
//         appBar: _buildAppBar(context),
//         body: Container(
//           width: SizeUtils.width,
//           height: SizeUtils.height,
//           decoration: BoxDecoration(
//             color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
//             border: Border.all(
//               color: theme.colorScheme.primary.withOpacity(1),
//               width: 1.h,
//             ),
//             image: DecorationImage(
//               image: AssetImage(
//                 ImageConstant.imgFrameFortyeight,
//               ),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: Container(
//             width: double.maxFinite,
//             padding: EdgeInsets.symmetric(
//               horizontal: 11.h,
//               vertical: 16.v,
//             ),
//             child: Column(
//               children: [
//                 SizedBox(height: 21.v),
//                 CustomImageView(
//                   imagePath: ImageConstant.imgImage126,
//                   height: 100.adaptSize,
//                   width: 100.adaptSize,
//                 ),
//                 SizedBox(height: 35.v),
//                 _buildWidgetStack(context),
//                 SizedBox(height: 61.v),
//                 _buildWidgetRow(context),
//               ],
//             ),
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

//   /// Section Widget
//   Widget _buildWidgetStack(BuildContext context) {
//     return SizedBox(
//       height: 277.v,
//       width: 354.h,
//       child: Stack(
//         alignment: Alignment.topRight,
//         children: [
//           CustomImageView(
//             imagePath: ImageConstant.imgImage133,
//             height: 195.v,
//             width: 110.h,
//             alignment: Alignment.bottomLeft,
//           ),
//           CustomImageView(
//             imagePath: ImageConstant.imgImage134,
//             height: 137.v,
//             width: 199.h,
//             alignment: Alignment.topRight,
//             margin: EdgeInsets.only(right: 62.h),
//           ),
//           Align(
//             alignment: Alignment.topRight,
//             child: Container(
//               width: 315.h,
//               margin: EdgeInsets.only(top: 55.v),
//               decoration: AppDecoration.outlinePrimary3,
//               child: Text(
//                 "أين مصدر هذا الإزعاج ؟",
//                 maxLines: null,
//                 overflow: TextOverflow.ellipsis,
//                 style: CustomTextStyles.titleSmallBold,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildWidgetRow(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(left: 2.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           CustomImageView(
//             imagePath: ImageConstant.imgImage132,
//             height: 94.adaptSize,
//             width: 94.adaptSize,
//             margin: EdgeInsets.only(
//               top: 54.v,
//               bottom: 76.v,
//             ),
//           ),
//           Column(
//             children: [
//               CustomImageView(
//                 imagePath: ImageConstant.imgImage127,
//                 height: 88.v,
//                 width: 82.h,
//               ),
//               SizedBox(height: 52.v),
//               CustomImageView(
//                 imagePath: ImageConstant.imgWhatsappImage,
//                 height: 84.v,
//                 width: 85.h,
//               ),
//             ],
//           ),
//           CustomImageView(
//             imagePath: ImageConstant.imgImage130,
//             height: 90.v,
//             width: 95.h,
//             margin: EdgeInsets.only(
//               top: 72.v,
//               bottom: 62.v,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
