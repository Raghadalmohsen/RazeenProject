import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';

// class FrameEightysixScreen extends StatelessWidget {
//   const FrameEightysixScreen({Key? key})
//       : super(
//           key: key,
//         );

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SizedBox(
//           height: 359.v,
//           width: 634.h,
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               CustomImageView(
//                 imagePath: ImageConstant.imgImage104359x634,
//                 height: 359.v,
//                 width: 634.h,
//                 alignment: Alignment.center,
//               ),
//               Align(
//                 alignment: Alignment.center,
//                 child: Container(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: 215.h,
//                     vertical: 4.v,
//                   ),
//                   decoration: AppDecoration.outlinePrimary11.copyWith(
//                     borderRadius: BorderRadiusStyle.roundedBorder33,
//                   ),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       Spacer(),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           CustomImageView(
//                             imagePath: ImageConstant.imgImg08961,
//                             height: 40.adaptSize,
//                             width: 40.adaptSize,
//                           ),
//                           CustomImageView(
//                             imagePath: ImageConstant.imgMedal22,
//                             height: 40.adaptSize,
//                             width: 40.adaptSize,
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 5.v),
//                       Divider(
//                         indent: 29.h,
//                         endIndent: 30.h,
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               CustomImageView(
//                 imagePath: ImageConstant.imgImg08981,
//                 height: 44.adaptSize,
//                 width: 44.adaptSize,
//                 alignment: Alignment.bottomCenter,
//                 margin: EdgeInsets.only(bottom: 35.v),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class  FrameEightysixScreen extends StatelessWidget {
  FrameEightysixScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                //imagePath: ImageConstant.imgScreenshot20240211815x393,
                height: 815.v,
                width: 393.h,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 23.v),
                    SizedBox(
                      height: 792.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                right: 33.h,
                                bottom: 74.v,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                   // imagePath: ImageConstant.imgImage238,
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    alignment: Alignment.centerRight,
                                  ),
                                  Spacer(
                                    flex: 42,
                                  ),
                                  CustomImageView(
                                    //imagePath: ImageConstant.imgImage250,
                                    height: 139.v,
                                    width: 206.h,
                                  ),
                                  Spacer(
                                    flex: 57,
                                  ),
                                  CustomImageView(
                                    //imagePath: ImageConstant.imgImage252,
                                    height: 148.v,
                                    width: 216.h,
                                    radius: BorderRadius.circular(
                                      12.h,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomImageView(
                           // imagePath: ImageConstant.imgImage249,
                            height: 129.v,
                            width: 175.h,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(top: 78.v),
                          ),
                          CustomImageView(
                            //imagePath: ImageConstant.imgImage251,
                            height: 138.v,
                            width: 211.h,
                            alignment: Alignment.bottomRight,
                            margin: EdgeInsets.only(bottom: 27.v),
                          ),
                          CustomImageView(
                            //imagePath: ImageConstant.imgImg089835,
                            height: 4.v,
                            width: 44.h,
                            alignment: Alignment.bottomCenter,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(context),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  // Widget _buildBottomBar(BuildContext context) {
  //   return CustomBottomAppBar(
  //     onChanged: (BottomBarEnum type) {
  //       Navigator.pushNamed(
  //           navigatorKey.currentContext!, getCurrentRoute(type));
  //     },
  //   );
  // }

  ///Handling route based on bottom click actions
  // String getCurrentRoute(BottomBarEnum type) {
  //   switch (type) {
  //     case BottomBarEnum.Img089634:
  //       return AppRoutes.frame170Page;
  //     case BottomBarEnum.Medal235:
  //       return "/";
  //     default:
  //       return "/";
  //   }
  // }

  ///Handling page based on route
  // Widget getCurrentPage(String currentRoute) {
  //   switch (currentRoute) {
  //     case AppRoutes.frame170Page:
  //       return Frame170Page();
  //     default:
  //       return DefaultWidget();
  //   }
  // }
}

