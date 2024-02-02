import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/frame_104_screen/frame_104_screen.dart';
import 'package:raghad_s_razeen/presentation/frame_105_screen/frame_105_screen.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';

class Frame103Screen extends StatelessWidget {//الصفحه الرئيسيه
  const Frame103Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: SizeUtils.height,
          width: double.maxFinite,
           decoration: BoxDecoration(
                    border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup225, //خلفية
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 57.h,
                    vertical: 74.v,
                  ),
                  child: Column(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgScreenshot2023131x158, //رزين
                        height: 131.v,
                        width: 158.h,
                        alignment: Alignment.topLeft,
                       margin: EdgeInsets.only(left: 72.h),
                      ),
                       /*   GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Frame104Screen()), // TO NEXT PAGE
            );
          },),*/
                      SizedBox(height: 35.v),
                  
                      CustomElevatedButton(
                        height: 43.v,
                        text: "تسجيل الدخول",
                        margin: EdgeInsets.only(right: 9.h),
                        buttonStyle: CustomButtonStyles.outlinePrimary,
                        buttonTextStyle:
                            CustomTextStyles.titleMediumBlack,
                             onPressed: () {//بداية كود تنقل الزر
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Frame104Screen()),//next page
                          );},//نهاية التنقل
                      ),
                     

                      SizedBox(height: 13.v),
            /*                           GestureDetector(
           onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Frame105Screen()), // TO NEXT PAGE
            );
          },),*/
                      CustomElevatedButton(
                        height: 43.v,
                        text: "تسجيل جديد",
                        margin: EdgeInsets.only(right: 9.h),
                        buttonStyle: CustomButtonStyles.outlinePrimary,
                        buttonTextStyle:
                            CustomTextStyles.titleMediumBlack,
                            onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Frame105Screen()),//next page
                          );},
                      ),
                      SizedBox(height: 13.v),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage23141x136, //النجمة
                height: 141.v,
                width: 136.h,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 169.v),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgScreenshot2023173x129, //الجد
                height: 206.v,
                width: 150.h,
                alignment: Alignment.bottomLeft,
                margin: EdgeInsets.only(bottom: 13.v),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
