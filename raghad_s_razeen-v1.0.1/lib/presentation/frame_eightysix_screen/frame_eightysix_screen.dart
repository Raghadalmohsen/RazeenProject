import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';

class FrameEightysixScreen extends StatelessWidget {
  const FrameEightysixScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 359.v,
          width: 634.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage104359x634,
                height: 359.v,
                width: 634.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 215.h,
                    vertical: 4.v,
                  ),
                  decoration: AppDecoration.outlinePrimary11.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder33,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImg08961,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgMedal22,
                            height: 40.adaptSize,
                            width: 40.adaptSize,
                          ),
                        ],
                      ),
                      SizedBox(height: 5.v),
                      Divider(
                        indent: 29.h,
                        endIndent: 30.h,
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImg08981,
                height: 44.adaptSize,
                width: 44.adaptSize,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 35.v),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
