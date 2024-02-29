// import 'package:flutter/material.dart';
// import 'package:raghad_s_razeen/core/app_export.dart';
// import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
// import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';

// class Frame110Screen extends StatelessWidget {
//   const Frame110Screen({Key? key})
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
//               horizontal: 12.h,
//               vertical: 16.v,
//             ),
//             child: Column(
//               children: [
//                 SizedBox(height: 99.v),
//                 _buildWidgetRow(context),
//                 Spacer(),
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: Padding(
//                     padding: EdgeInsets.only(right: 9.h),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Container(
//                           padding: EdgeInsets.symmetric(
//                             horizontal: 17.h,
//                             vertical: 40.v,
//                           ),
//                           decoration: AppDecoration.fillBlueGrayC.copyWith(
//                             borderRadius: BorderRadiusStyle.circleBorder68,
//                           ),
//                           child: Column(
//                             mainAxisSize: MainAxisSize.min,
//                             children: [
//                               SizedBox(height: 5.v),
//                               Text(
//                                 "لا أريد",
//                                 style: CustomTextStyles
//                                     .displayMediumOnSecondaryContainer,
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(
//                             left: 24.h,
//                             top: 83.v,
//                             bottom: 8.v,
//                           ),
//                           child: Text(
//                             "شكرا",
//                             style: theme.textTheme.displaySmall,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 46.v),
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: Text(
//                     "من فضلك",
//                     style:
//                         CustomTextStyles.headlineLargeOnSecondaryContainerBlack,
//                   ),
//                 ),
//                 SizedBox(height: 23.v),
//                 CustomImageView(
//                   imagePath: ImageConstant.imgWhatsappImage,
//                   height: 84.v,
//                   width: 85.h,
//                 ),
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
//   Widget _buildWidgetRow(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 12.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           _buildWidgetFiftyThree(
//             context,
//             image2: ImageConstant.imgImage161,
//           ),
//           _buildWidgetFiftyThree(
//             context,
//             image2: ImageConstant.imgImage162,
//           ),
//         ],
//       ),
//     );
//   }

//   /// Common widget
//   Widget _buildWidgetFiftyThree(
//     BuildContext context, {
//     required String image2,
//   }) {
//     return SizedBox(
//       height: 165.adaptSize,
//       width: 165.adaptSize,
//       child: Stack(
//         alignment: Alignment.centerLeft,
//         children: [
//           CustomImageView(
//             imagePath: ImageConstant.imgImage147,
//             height: 165.adaptSize,
//             width: 165.adaptSize,
//             alignment: Alignment.center,
//           ),
//           CustomImageView(
//             imagePath: image2,
//             height: 60.adaptSize,
//             width: 60.adaptSize,
//             alignment: Alignment.centerLeft,
//             margin: EdgeInsets.only(left: 50.h),
//           ),
//         ],
//       ),
//     );
//   }
// }
