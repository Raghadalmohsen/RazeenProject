import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/frame_103_screen/frame_103_screen.dart';
import 'package:raghad_s_razeen/presentation/frame_108_screen/frame_108_screen.dart';
import 'package:raghad_s_razeen/presentation/frame_131_screen/frame_131_screen.dart';
import 'package:raghad_s_razeen/presentation/frame_164_screen/frame_164_screen.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_floating_button.dart';

class Frame107Screen extends StatelessWidget {
  //الاعدادات
  Frame107Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        // extendBodyBehindAppBar: true, //زر الرجوع ممكن نستغني عنه
        // appBar: AppBar(
        //   // 1. Back Arrow Icon
        //   leading: IconButton(
        //     iconSize: 40,
        //     icon: Icon(Icons.arrow_circle_right),
        //     onPressed: () => Navigator.pop(context),
        //   ),
        //   backgroundColor: Color.fromARGB(0, 17, 7, 51),
        //   elevation: 0,
        // ),

        extendBody: true,
         bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

 resizeToAvoidBottomInset: false,

        body: Container(
         
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                    child: SingleChildScrollView(//for overflow
                   physics: NeverScrollableScrollPhysics(),
                
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 45.v,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.BackgroundHouse, //خلفيه
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
              
                      SizedBox(height: 75.v),
                      Container(
                        margin: EdgeInsets.only(
                          left: 6.h,
                          right: 9.h,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 21.h,
                          vertical: 130.v,
                        ),
                        decoration: AppDecoration.outlinePrimary7.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder33,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 2.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 23.h,
                                vertical: 14.v,
                              ),
                              decoration:
                                  AppDecoration.outlinePrimary9.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder30,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Container(
                                      margin: EdgeInsets.only(
                                        top: 5.v,
                                        bottom: 5.v,
                                      ),
                                      decoration: AppDecoration.outlinePrimary3,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Frame108Screen()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.transparent,
                                              foregroundColor: Colors.black,
                                              elevation: 0,
                                              side: const BorderSide(
                                                width: 1.0,
                                                color: Color.fromARGB(
                                                    0, 244, 67, 54),
                                              )),
                                          child: const Text(' الملف الشخصي'))),

                                  CustomImageView(
                                    imagePath: ImageConstant
                                        .imgImage31, //صوره فوق ملف شخصي
                                    height: 22.v,
                                    width: 19.h,
                                    margin: EdgeInsets.only(
                                      left: 12.h,
                                      bottom: 10.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16.v),
                            Container(
                              margin: EdgeInsets.only(left: 2.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 22.h,
                                vertical: 14.v,
                              ),
                              decoration:
                                  AppDecoration.outlinePrimary9.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder30,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                        top: 5.v,
                                        bottom: 5.v,
                                      ),
                                      decoration: AppDecoration.outlinePrimary3,
                                      child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Frame164Screen()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.transparent,
                                              foregroundColor: Colors.black,
                                              elevation: 0,
                                              side: const BorderSide(
                                                width: 1.0,
                                                color: Color.fromARGB(
                                                    0, 244, 67, 54),
                                              )),
                                          child: const Text('الميداليات'))),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgImage32, //ميداليات
                                    height: 31.v,
                                    width: 25.h,
                                    margin: EdgeInsets.only(left: 15.h),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 17.v),
                            Container(
                              margin: EdgeInsets.only(left: 2.h),
                              padding: EdgeInsets.symmetric(
                                horizontal: 19.h,
                                vertical: 12.v,
                              ),
                              decoration:
                                  AppDecoration.outlinePrimary9.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder30,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      margin: EdgeInsets.only(
                                        top: 5.v,
                                        bottom: 5.v,
                                      ),
                                      decoration: AppDecoration.outlinePrimary3,
                                      child: ElevatedButton(
                                          //زر تسجيل خروج
                                          onPressed: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Frame131Screen()),
                                            );
                                          },
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  Colors.transparent,
                                              foregroundColor: Colors.black,
                                              elevation: 0,
                                              side: const BorderSide(
                                                width: 1.0,
                                                color: Color.fromARGB(
                                                    0, 244, 67, 54),
                                              )),
                                          child: const Text(' تسجيل خروج'))),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgImage30, //تسجيل خروج
                                    height: 32.v,
                                    width: 26.h,
                                    margin: EdgeInsets.only(
                                      left: 9.h,
                                      bottom: 4.v,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 82.v),
                          ],
                        ),
                      ),
                      SizedBox(height: 75.v),
                    ],
                  ),
                ),
              ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage23152x119, //نجمه
                height: 152.v,
                width: 119.h,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 44.v),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 141.h,
                  margin: EdgeInsets.only(
                    top: 167.v,
                    right: 71.h,
                  ),
                  decoration: AppDecoration.outlinePrimary3,
                  child: Text(
                    "الإعدادات",
                    maxLines: null,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.headlineLarge32,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgScreenshot2023173x129, //الجد
                height: 206.v,
                width: 150.h,
                alignment: Alignment.bottomLeft,
              ),
            ],
          ),
        ),
      
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
