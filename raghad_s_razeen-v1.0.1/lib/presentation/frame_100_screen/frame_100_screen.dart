import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/frame_103_screen/frame_103_screen.dart';

class Frame100Screen extends StatelessWidget {
  const Frame100Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.gray50,
            border: Border.all(
              color: theme.colorScheme.primary.withOpacity(1),
              width: 1.h,
            ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup225, //خلفية
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 12.v),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 61.v),
                _buildScreenshot(context),
                Spacer(),
                _buildScreenshot1(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildScreenshot(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 243.v,
        width: 349.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgScreenshot2023131x158, //رزين
              height: 131.v,
              width: 158.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 72.h),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 158.v,
                width: 349.h,
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 84.v,
                        width: 309.h,
                        decoration: BoxDecoration(
                          color: appTheme.orangeA100,
                          borderRadius: BorderRadius.circular(
                            20.h,
                          ),
                          boxShadow: [
                            BoxShadow( //box
                              color: theme.colorScheme.primary,
                              spreadRadius: 2.h,
                              blurRadius: 2.h,
                              offset: Offset(
                                0,
                                4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: 245.h,
                        margin: EdgeInsets.only(
                          left: 31.h,
                          bottom: 7.v,
                        ),
                        child: Text(
                          "رزين تطبيق تعليمي يهدف إلى تعليم الأطفال أهمية احترام كبار السن بطريقة ممتعة ومفيدة",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleMediumBlack,//titleSmallOnPrimary,titleSmallBold(good) FOMT
                        ),
                        
                      ),
                    ),//
                    CustomImageView(
                      imagePath: ImageConstant.imgImage23141x119, //النجمة
                      height: 141.v,
                      width: 119.h,
                      alignment: Alignment.topRight,
                    ),
                    // CustomImageView(
                    //   imagePath: ImageConstant.imgImage164, //صوت
                    //   height: 28.v,
                    //   width: 27.h,
                    //   alignment: Alignment.topLeft,
                    //   margin: EdgeInsets.only(
                    //     left: 6.h,
                    //     top: 62.v,
                    //   ),
                    // ),
                    // Align(
                    //   alignment: Alignment.bottomLeft,
                    //   child: Container(
                    //     height: 84.v,
                    //     width: 309.h,
                    //     decoration: BoxDecoration(
                    //       color: appTheme.orangeA100,
                    //       borderRadius: BorderRadius.circular(
                    //         20.h,
                    //       ),
                    //       boxShadow: [
                    //         BoxShadow( //box
                    //           color: theme.colorScheme.primary,
                    //           spreadRadius: 2.h,
                    //           blurRadius: 2.h,
                    //           offset: Offset(
                    //             0,
                    //             4,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    // Align(
                    //   alignment: Alignment.bottomLeft,
                    //   child: Container(
                    //     width: 245.h,
                    //     margin: EdgeInsets.only(
                    //       left: 31.h,
                    //       bottom: 7.v,
                    //     ),
                    //     child: Text(
                    //       "رزين تطبيق تعليمي يهدف إلى تعليم الأطفال أهمية احترام كبار السن بطريقة ممتعة ومفيدة",
                    //       maxLines: 3,
                    //       overflow: TextOverflow.ellipsis,
                    //       textAlign: TextAlign.center,
                    //       style: CustomTextStyles.titleMediumBluegray700,
                    //     ),
                        
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  // Widget _buildScreenshot1(BuildContext context) {
  //   return Padding(
  //     padding: EdgeInsets.only(right: 10.h),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         CustomImageView(
  //           imagePath: ImageConstant.imgScreenshot2023173x129, //الجد
  //           height: 206.v,
  //           width: 150.h,
  //         ),
          
  //         Container(
  //           width: 76.h,
  //           margin: EdgeInsets.only(
  //             left: 157.h,
  //             top: 163.v,
  //             bottom: 9.v,
  //           ),
  //           decoration: AppDecoration.outlinePrimary3,
  //           child: Text(
  //             "تخطي",
  //             maxLines: null,
  //             overflow: TextOverflow.ellipsis,
  //             style: CustomTextStyles.titleSmallOnPrimary.copyWith(
  //               decoration: TextDecoration.underline,
  //             ),
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  Widget _buildScreenshot1(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(right: 10.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgScreenshot2023173x129, //الجد
          height: 206.v,
          width: 150.h,
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Frame103Screen()), // TO NEXT PAGE
            );
          },
          child: Container(
            width: 76.h,
            margin: EdgeInsets.only(
              left: 157.h,
              top: 163.v,
              bottom: 9.v,
            ),
            decoration: AppDecoration.outlinePrimary3,
            child: Text(
              "تخطي",
              maxLines: null,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.titleSmallOnPrimary.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

// class Page2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Page 2'),
//       ),
//       // Rest of your page 2 layout
//     );
//   }
// }
}
