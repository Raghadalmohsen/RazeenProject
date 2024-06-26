import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/initialscreen.dart';

class Firstpage extends StatelessWidget {
  const Firstpage({Key? key})
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
                            BoxShadow( 
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
                          style: CustomTextStyles.titleMediumBlack,
                        ),
                        
                      ),
                    ),//
                    CustomImageView(
                      imagePath: ImageConstant.imgImage23141x119, //النجمة
                      height: 141.v,
                      width: 119.h,
                      alignment: Alignment.topRight,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
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
              MaterialPageRoute(builder: (context) => Initialscreen()), 
            );
          },
          child: Container(
            width: 76.h,
            margin: EdgeInsets.only(
              left: 155.h,
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
}
