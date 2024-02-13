import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_floating_button.dart';

class  FrameEightysixScreen extends StatelessWidget { // صفحة الماب 
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
          //horizontalScroll

          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            
            
            children: [

              //rawa idea : Container( decoration: BoxDecoration(image:DecorationImage(image: AssetImage('assets/images/img_screenshot_2024_02_11_815x393.png'),) ), )
               //image:AssetImage('assets/images/img_screenshot_2024_02_11_815x393.png'),
              //body:center(child: Image.asset(''))
              CustomImageView(
                imagePath: ImageConstant.imgScreenshot20240211815x393,//الخلفيه للماب 
                //imagePath: ImageConstant.imgImage65, تضبط 
                // image:AssetImage('assets/images/img_screenshot_2024_02_11_815x393.png'),
                height: 815.v,
                width: 393.h,
                alignment: Alignment.topCenter,
             ),
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(//for overflow
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
                                      imagePath: ImageConstant.imgImage253,//البيت الاحمر 
                                      height: 129.adaptSize,//v
                                      width: 175.adaptSize,//v
                                      alignment: Alignment.topLeft,
                                      //margin: EdgeInsets.only(top:100),// added
                                    ),
                                    Spacer(
                                      flex: 135,
                                    ),
                                    
                                    // CustomImageView(
                                    //  imagePath: ImageConstant.imgImage238,     //الاعدادات 
                            
                                    //   height: 40.adaptSize,
                                    //   width: 40.adaptSize,
                                    //   alignment: Alignment.centerRight,
                                    // ),
                                    // Spacer(
                                    //   flex: 42,
                                    // ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage250,//البيت الوردي الفاتح 
                                      height: 135.v,
                                      width: 200.h,
                                      margin: EdgeInsets.only(bottom: 213 , left: 9),//added227
                                    ),
                                    Spacer(
                                      flex: 57,
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage252,// البيت الازرق الغامق 
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
                             imagePath: ImageConstant.imgImage249,// البيت الاصفر 
                              height: 129.v,
                              width: 175.h,
                              alignment: Alignment.topRight,
                              margin: EdgeInsets.only(top: 78.v),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage251,// البيت السماوي 
                              height: 138.v,
                              width: 211.h,
                              alignment: Alignment.bottomRight,
                              margin: EdgeInsets.only(bottom: 295.v),
                            ),
                            CustomImageView(
                             // imagePath: ImageConstant.imgImg089835, البيت الصغير 
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
              ),
            ],
            
          ),
        ),
        // bottomNavigationBar: _buildBottomBar(context),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        extendBody: true,
        bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
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

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imageNotFound,
        margin: EdgeInsets.fromLTRB(24.h, 26.v, 339.h, 26.v),
      ),
    );
  }

  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }

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

