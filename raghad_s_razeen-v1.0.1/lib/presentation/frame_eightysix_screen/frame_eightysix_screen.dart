import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/frame_103_screen/frame_103_screen.dart';
import 'package:raghad_s_razeen/presentation/frame_107_screen/frame_107_screen.dart';
import 'package:raghad_s_razeen/presentation/frame_131_screen/frame_131_screen.dart';
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
         extendBodyBehindAppBar: true, //زر الرجوع
        appBar: AppBar(
          // 1. Back Arrow Icon
          leading: IconButton(
           iconSize: 40,
           color: const Color.fromARGB(255, 255, 255, 255),
          
            icon: Icon(Icons.settings),
             onPressed: () { Navigator.push(
               context,
               MaterialPageRoute(builder: (context) =>  Frame107Screen()), //الاعدادات
            );},
          ),
          backgroundColor: Color.fromARGB(0, 213, 204, 243),
          elevation: 0,
        ),
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
                  
               Container(
                                     
                                    margin: EdgeInsets.only(
                                      right: 200.v,
                                      bottom: 68.v,
                                    ),

                                    
                                       height: 135.v,
                                     width: 200.h,
                                    decoration: AppDecoration.outlinePrimary3,
                                 child: ElevatedButton(
                onPressed: () { Navigator.push(
               context,
               MaterialPageRoute(builder: (context) =>  Frame103Screen()),
            );},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.black,
                    elevation: 0,
                    side: const BorderSide(
                      width: 1.0,
                      color: Color.fromARGB(0, 244, 67, 54),
                      
                    )),
                
                 child:Image.asset(ImageConstant.imgImage253)),//بيت احمر
                 
                 ),
                                    //  CustomImageView(
                                    //   imagePath: ImageConstant.imgImage253,//البيت الاحمر 
                                    //   height: 129.adaptSize,//v
                                    //   width: 175.adaptSize,//v
                                    //   alignment: Alignment.topLeft,
                                    //   //margin: EdgeInsets.only(top:100),// added
                                    // ),
                                    // Spacer(
                                    //   flex: 135,
                                    // ),
                                    
                                    // CustomImageView(
                                    //  imagePath: ImageConstant.imgImage238,     //الاعدادات 
                            
                                    //   height: 40.adaptSize,
                                    //   width: 40.adaptSize,
                                    //   alignment: Alignment.centerRight,
                                    // ),
                                    // Spacer(
                                    //   flex: 42,
                                    // ),

               Container(
                                     
                                    margin: EdgeInsets.only(
                                      left: 8.v,
                                      bottom: 232.v,
                                    ),
                                       height: 135.v,
                                     width: 200.h,
                                    decoration: AppDecoration.outlinePrimary3,
                                 child: ElevatedButton(
                onPressed: () { Navigator.push(
               context,
               MaterialPageRoute(builder: (context) =>  Frame103Screen()),
            );},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.black,
                    elevation: 0,
                    side: const BorderSide(
                      width: 1.0,
                      color: Color.fromARGB(0, 244, 67, 54),
                    )),
                
                 child:Image.asset(ImageConstant.imgImage250))//بيت وردي فاتح
     
                                   ),
                                 
                                
                       Container(
                     
                                       height: 148.v,
                                     width: 216.h,
                                    decoration: AppDecoration.outlinePrimary3,
                                 child: ElevatedButton(
                onPressed: () { Navigator.push(
               context,
               MaterialPageRoute(builder: (context) =>  Frame103Screen()),
            );},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.black,
                    elevation: 0,
                    side: const BorderSide(
                      width: 1.0,
                      color: Color.fromARGB(0, 244, 67, 54),
                    )
                    ),
                
                 child:Image.asset(ImageConstant.imgImage252))//بيت ازرق غامق
     
                                   ),

                                    // CustomImageView(
                                    //   imagePath: ImageConstant.imgImage250,//البيت الوردي الفاتح 
                                    //   height: 135.v,
                                    //   width: 200.h,
                                    //   margin: EdgeInsets.only(bottom: 213 , left: 9),//added227
                                    // ),
                                    // Spacer(
                                    //   flex: 57,
                                    // ),
                                    
                                    // CustomImageView(
                                    //   imagePath: ImageConstant.imgImage252,// البيت الازرق الغامق 
                                    //   height: 148.v,
                                    //   width: 216.h,
                                    //   radius: BorderRadius.circular(
                                    //     12.h,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
             Container(
                                     
                                    margin: EdgeInsets.only(
                                    left: 159,
                                      top: 70.v,
                                    ),
                                    
                                       height: 129.v,
                                     width: 175.h,
                                    decoration: AppDecoration.outlinePrimary3,
                                 child: ElevatedButton(
                onPressed: () { Navigator.push(
               context,
               MaterialPageRoute(builder: (context) =>  Frame103Screen()),
            );},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.black,
                    elevation: 0,
                    side: const BorderSide(
                      width: 1.0,
                      color: Color.fromARGB(0, 244, 67, 54),
                      
                    )),
                
                 child:Image.asset(ImageConstant.imgImage249)),//بيت اصفر
                 
                 ),




                            // CustomImageView(
                            //  imagePath: ImageConstant.imgImage249,// البيت الاصفر 
                            //   height: 129.v,
                            //   width: 175.h,
                            //   alignment: Alignment.topRight,
                            //   margin: EdgeInsets.only(top: 78.v),
                            // ),
                                           
             Container(
                                     
                                    margin: EdgeInsets.only(
                                    left: 159,
                                      top: 360.v,
                                    ),
                                    
                                       height: 140.v,
                                     width: 210.h,
                                    decoration: AppDecoration.outlinePrimary3,
                                 child: ElevatedButton(
                onPressed: () { Navigator.push(
               context,
               MaterialPageRoute(builder: (context) =>  Frame131Screen()),
            );},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.black,
                    elevation: 0,
                    side: const BorderSide(
                      width: 1.0,
                      color: Color.fromARGB(0, 244, 67, 54),
                      
                    )),
                
                 child:Image.asset(ImageConstant.imgImage251)),//بيت سماوي
                 
                 ),
                            // CustomImageView(
                            //   imagePath: ImageConstant.imgImage251,// البيت السماوي 
                            //   height: 138.v,
                            //   width: 211.h,
                            //   alignment: Alignment.bottomRight,
                            //   margin: EdgeInsets.only(bottom: 295.v),
                            // ),
                  
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

  // PreferredSizeWidget _buildAppBar(BuildContext context) {
  //   return CustomAppBar(
  //     leadingWidth: double.maxFinite,
  //     leading: AppbarLeadingImage(
  //       imagePath: ImageConstant.imageNotFound,
  //       margin: EdgeInsets.fromLTRB(24.h, 26.v, 339.h, 26.v),
  //     ),
  //   );
  // }

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

