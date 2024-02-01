import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';

class FrameEightScreen extends StatelessWidget {
  const FrameEightScreen({Key? key})
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
                ImageConstant.imgGroup1117,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: 359.h,
            child: SizedBox(
              height: 633.v,
              width: 359.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgImage17,
                    height: 46.v,
                    width: 312.h,
                    alignment: Alignment.topCenter,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 40.v),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _buildScreenshot(context),
                          Spacer(),
                          _buildScreenshot1(context),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
        height: 218.v,
        width: 324.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgScreenshot2023131x158,
              height: 131.v,
              width: 158.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 66.h),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: 130.v,
                width: 324.h,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage23110x93,
                      height: 110.v,
                      width: 93.h,
                      alignment: Alignment.topRight,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        height: 68.v,
                        width: 289.h,
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
                        width: 248.h,
                        margin: EdgeInsets.only(left: 21.h),
                        child: Text(
                          "رزين تطبيق تعليمي يهدف إلى تعليم الأطفال أهمية احترام كبار السن بطريقة ممتعة ومفيدة",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.titleSmallBluegray700SemiBold,
                        ),
                      ),
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

  /// Section Widget
  Widget _buildScreenshot1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgScreenshot2023173x129,
            height: 206.v,
            width: 161.h,
          ),
          Container(
            width: 76.h,
            margin: EdgeInsets.only(
              left: 114.h,
              top: 155.v,
              bottom: 17.v,
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
        ],
      ),
    );
  }
}
