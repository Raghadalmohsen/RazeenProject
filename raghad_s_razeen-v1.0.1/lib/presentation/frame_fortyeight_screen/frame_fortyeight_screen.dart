import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';

class FrameFortyeightScreen extends StatelessWidget {
  const FrameFortyeightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: theme.colorScheme.onSecondaryContainer.withOpacity(1),
        appBar: _buildAppBar(context),
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onSecondaryContainer.withOpacity(1),
            border: Border.all(
              color: theme.colorScheme.primary.withOpacity(1),
              width: 1.h,
            ),
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgFrameFortyeight,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(16.h),
            child: Column(
              children: [
                SizedBox(height: 25.v),
                CustomImageView(
                  imagePath: ImageConstant.imgImg09111,
                  height: 100.adaptSize,
                  width: 100.adaptSize,
                ),
                SizedBox(height: 27.v),
                _buildChildrenToysOne(context),
                Spacer(),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 19.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 167.v,
                          width: 178.h,
                          margin: EdgeInsets.only(bottom: 35.v),
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Container(
                                  height: 136.adaptSize,
                                  width: 136.adaptSize,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 24.h,
                                    vertical: 22.v,
                                  ),
                                  decoration:
                                      AppDecoration.fillBlueGrayC.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.circleBorder68,
                                  ),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgImg08531,
                                    height: 92.v,
                                    width: 86.h,
                                    alignment: Alignment.center,
                                  ),
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgSocks1,
                                height: 53.adaptSize,
                                width: 53.adaptSize,
                                alignment: Alignment.bottomRight,
                              ),
                            ],
                          ),
                        ),
                        Opacity(
                          opacity: 0.8,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgImage107,
                            height: 36.adaptSize,
                            width: 36.adaptSize,
                            margin: EdgeInsets.only(
                              left: 14.h,
                              top: 167.v,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgWhatsappImage,
                  height: 84.v,
                  width: 85.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imageNotFound,
        margin: EdgeInsets.fromLTRB(24.h, 26.v, 339.h, 26.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildChildrenToysOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 7.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgChildrenToys1,
            height: 154.adaptSize,
            width: 154.adaptSize,
            margin: EdgeInsets.only(top: 5.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgBasket1,
            height: 155.adaptSize,
            width: 155.adaptSize,
            margin: EdgeInsets.only(bottom: 3.v),
          ),
        ],
      ),
    );
  }
}
