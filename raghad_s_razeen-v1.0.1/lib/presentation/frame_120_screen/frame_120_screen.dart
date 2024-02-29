// import 'package:flutter/material.dart';
// import 'package:raghad_s_razeen/core/app_export.dart';
// import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
// import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';
// import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
// import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
// import 'package:raghad_s_razeen/widgets/custom_floating_button.dart';

// class Frame120Screen extends StatelessWidget {
//   // الفيدباك happy
//   Frame120Screen({Key? key})
//       : super(
//           key: key,
//         );

//   GlobalKey<NavigatorState> navigatorKey = GlobalKey();

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         extendBody: true,
//         bottomNavigationBar: _buildBottomAppBar(context),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//         body: SizedBox(
//           height: SizeUtils.height,
//           width: 394.h,
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               CustomImageView(
//                 imagePath: ImageConstant.Background, //الخلفيه
//                 height: 852.v,
//                 width: 394.h,
//                 alignment: Alignment.center,
//               ),
//               Align(
//                 alignment: Alignment.center,
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     SizedBox(height: 73.v),
//                     Expanded(
//                       child: SingleChildScrollView(
//                         child: Container(
//                           height: 554.v,
//                           width: 394.h,
//                           margin: EdgeInsets.only(bottom: 126.v),
//                           child: Stack(
//                             alignment: Alignment.bottomCenter,
//                             children: [
//                               // CustomImageView(
//                               //   imagePath: ImageConstant.HappyFeedback,// فيدباك
//                               //   height: 508.v,
//                               //   width: 382.h,
//                               //   alignment: Alignment.topLeft,
//                               // ),
//                               Align(
//                                 alignment: Alignment.bottomCenter,
//                                 child: SizedBox(
//                                   height: 447.v,
//                                   width: 329.h,
//                                   child: Stack(
//                                     alignment: Alignment.bottomCenter,
//                                     children: [
//                                       Align(
//                                         alignment: Alignment.center,
//                                         child: Container(
//                                           height: 447.v,
//                                           width: 329.h,
//                                           decoration: BoxDecoration(
//                                             color: appTheme.blue5066,
//                                             borderRadius: BorderRadius.circular(
//                                               35.h,
//                                             ),
                                            
//                                           ),
//                                         ),
//                                       ),
//                                       CustomImageView(
//                                         imagePath: ImageConstant.HappyFeedback, // فيدباك
//                                         height: 508.v,
//                                         width: 382.h,
//                                         alignment: Alignment.topLeft,
//                                         margin: EdgeInsets.only(bottom: 42.v)
//                                       ),
//                                       CustomElevatedButton(
//                                         width: 92.h,
//                                         text: "التالي",
//                                         margin: EdgeInsets.only(bottom: 20.v),
//                                         alignment: Alignment.bottomCenter,
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
        
//       ),
//     );
//   }

//   /// Section Widget
//   Widget _buildBottomAppBar(BuildContext context) {
//     return CustomBottomBar(
//       onChanged: (BottomBarEnum type) {},
//     );
//   }

  
// }

