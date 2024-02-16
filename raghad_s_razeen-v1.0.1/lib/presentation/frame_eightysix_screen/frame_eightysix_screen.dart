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
                imagePath: ImageConstant.MapRoad,//الخلفيه للماب 
                //imagePath: ImageConstant.imgImage65, تضبط 
                // image:AssetImage('assets/images/img_screenshot_2024_02_11_815x393.png'),
                height: 815.v,
                width: 393.h,
                alignment: Alignment.topCenter,
             ),
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(//for overflow
                  physics: NeverScrollableScrollPhysics(),
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
                                      bottom: 60.v,
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
                                      top: 357.v,
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

  

  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }


}

