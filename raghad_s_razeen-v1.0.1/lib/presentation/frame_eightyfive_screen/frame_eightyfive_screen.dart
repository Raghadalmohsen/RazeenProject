import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';

class FrameEightyfiveScreen extends StatelessWidget {
  const FrameEightyfiveScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        body: SizedBox(
          height: 633.v,
          width: 356.h,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup304,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildArrowOneStack(context),
                      Spacer(
                        flex: 49,
                      ),
                      _buildConfirmColumn(context),
                      Spacer(
                        flex: 50,
                      ),
                      SizedBox(height: 13.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgWhatsappImage,
                        height: 59.v,
                        width: 68.h,
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage59,
                height: 162.v,
                width: 146.h,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 133.v),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowOneStack(BuildContext context) {
    return SizedBox(
      height: 47.v,
      width: 312.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage17,
            height: 46.v,
            width: 312.h,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imageNotFound,
            height: 2.v,
            width: 30.h,
            alignment: Alignment.bottomLeft,
            margin: EdgeInsets.only(left: 2.h),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmColumn(BuildContext context) {
    return Container(
      width: 318.h,
      margin: EdgeInsets.only(left: 6.h),
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 22.v,
      ),
      decoration: AppDecoration.outlinePrimary7.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder33,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 59.v),
          Container(
            width: 267.h,
            margin: EdgeInsets.only(right: 11.h),
            decoration: AppDecoration.outlinePrimary3,
            child: Text(
              " قم بتصنيف الأشياء التي تنتمي الى رزين أو جده",
              maxLines: null,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium,
            ),
          ),
          SizedBox(height: 20.v),
          CustomElevatedButton(
            width: 92.h,
            text: "موافق",
            alignment: Alignment.center,
          ),
        ],
      ),
    );
  }
}
