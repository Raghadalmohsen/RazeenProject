import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_floating_button.dart';

class Frame107Screen extends StatelessWidget {
  Frame107Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 764.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 45.v,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder33,
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup171,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imageNotFound,
                        height: 3.v,
                        width: 47.h,
                      ),
                      SizedBox(height: 75.v),
                      Container(
                        margin: EdgeInsets.only(
                          left: 6.h,
                          right: 9.h,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 21.h,
                          vertical: 134.v,
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
                                      bottom: 7.v,
                                    ),
                                    decoration: AppDecoration.outlinePrimary3,
                                    child: Text(
                                      "الملف الشخصي",
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage31,
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
                                      top: 7.v,
                                      bottom: 5.v,
                                    ),
                                    decoration: AppDecoration.outlinePrimary3,
                                    child: Text(
                                      "الميداليات",
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage32,
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
                                      top: 6.v,
                                      bottom: 10.v,
                                    ),
                                    decoration: AppDecoration.outlinePrimary3,
                                    child: Text(
                                      "تسجيل الخروج",
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage30,
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
              CustomImageView(
                imagePath: ImageConstant.imgImage23152x119,
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
                imagePath: ImageConstant.imgScreenshot2023206x150,
                height: 206.v,
                width: 150.h,
                alignment: Alignment.bottomLeft,
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildDoctorReviews(context),
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
  Widget _buildDoctorReviews(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
