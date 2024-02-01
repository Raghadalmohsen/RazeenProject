import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_floating_button.dart';

class Frame121Screen extends StatelessWidget {
  Frame121Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50.withOpacity(0.4),
        body: SizedBox(
          height: SizeUtils.height,
          width: 394.h,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage65,
                height: 852.v,
                width: 394.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 45.v),
                    _buildAppBar(context),
                    SizedBox(height: 44.v),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Container(
                          height: 479.v,
                          width: 394.h,
                          margin: EdgeInsets.only(bottom: 190.v),
                          child: Stack(
                            alignment: Alignment.topRight,
                            children: [
                              _buildSixtyFour(context),
                              CustomImageView(
                                imagePath: ImageConstant.imgImage23186x166,
                                height: 186.v,
                                width: 166.h,
                                alignment: Alignment.topRight,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButton: CustomFloatingButton(
          height: 50,
          width: 50,
          child: Icon(
            Icons.add,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 3.v,
      leadingWidth: 394.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow3,
        margin: EdgeInsets.only(
          left: 20.h,
          right: 327.h,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyFour(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: EdgeInsets.only(
          left: 31.h,
          right: 34.h,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 6.h,
          vertical: 18.v,
        ),
        decoration: AppDecoration.outlinePrimary8.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder33,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 9.v),
            CustomImageView(
              imagePath: ImageConstant.imgImage167,
              height: 28.v,
              width: 27.h,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 16.h),
            ),
            SizedBox(height: 51.v),
            SizedBox(
              height: 179.v,
              width: 186.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 179.v,
                      width: 186.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.onSecondaryContainer
                            .withOpacity(0.85),
                        borderRadius: BorderRadius.circular(
                          93.h,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage99,
                    height: 130.adaptSize,
                    width: 130.adaptSize,
                    alignment: Alignment.center,
                  ),
                ],
              ),
            ),
            SizedBox(height: 22.v),
            Container(
              width: 316.h,
              decoration: AppDecoration.outlinePrimary3,
              child: Text(
                "حاول مرة أخرى",
                maxLines: null,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.titleMediumBlack,
              ),
            ),
          ],
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
