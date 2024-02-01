import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_floating_button.dart';
import 'package:raghad_s_razeen/widgets/custom_text_form_field.dart';

class FrameEighteenScreen extends StatelessWidget {
  FrameEighteenScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController profileController = TextEditingController();

  TextEditingController logoutController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.v),
                CustomImageView(
                  imagePath: ImageConstant.imageNotFound,
                  height: 2.v,
                  width: 30.h,
                  margin: EdgeInsets.only(left: 32.h),
                ),
                SizedBox(height: 7.v),
                Container(
                  height: 550.v,
                  width: 351.h,
                  margin: EdgeInsets.only(left: 8.h),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 24.h,
                            right: 31.h,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 14.h,
                            vertical: 110.v,
                          ),
                          decoration: AppDecoration.outlinePrimary7.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder33,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: CustomTextFormField(
                                  controller: profileController,
                                  hintText: "الملف الشخصي",
                                  suffix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        10.h, 12.v, 18.h, 17.v),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgImage31,
                                      height: 18.v,
                                      width: 17.h,
                                    ),
                                  ),
                                  suffixConstraints: BoxConstraints(
                                    maxHeight: 47.v,
                                  ),
                                  contentPadding: EdgeInsets.only(
                                    left: 30.h,
                                    top: 15.v,
                                    bottom: 15.v,
                                  ),
                                ),
                              ),
                              SizedBox(height: 17.v),
                              Container(
                                margin: EdgeInsets.only(left: 10.h),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 17.h,
                                  vertical: 10.v,
                                ),
                                decoration:
                                    AppDecoration.outlinePrimary9.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder23,
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: 136.h,
                                        top: 7.v,
                                        bottom: 3.v,
                                      ),
                                      decoration: AppDecoration.outlinePrimary3,
                                      child: Text(
                                        "الميداليات",
                                        style: theme.textTheme.bodyMedium,
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage32,
                                      height: 26.v,
                                      width: 22.h,
                                      margin: EdgeInsets.only(
                                        left: 8.h,
                                        top: 1.v,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 17.v),
                              Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: CustomTextFormField(
                                  controller: logoutController,
                                  hintText: "تسجيل الخروج",
                                  textInputAction: TextInputAction.done,
                                  suffix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        8.h, 10.v, 14.h, 10.v),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgImage30,
                                      height: 27.v,
                                      width: 23.h,
                                    ),
                                  ),
                                  suffixConstraints: BoxConstraints(
                                    maxHeight: 47.v,
                                  ),
                                  contentPadding: EdgeInsets.only(
                                    left: 30.h,
                                    top: 15.v,
                                    bottom: 15.v,
                                  ),
                                ),
                              ),
                              SizedBox(height: 45.v),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage23110x100,
                        height: 110.v,
                        width: 100.h,
                        alignment: Alignment.topRight,
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 131.h,
                          margin: EdgeInsets.only(
                            top: 93.v,
                            right: 61.h,
                          ),
                          decoration: AppDecoration.outlinePrimary3,
                          child: Text(
                            "الإعدادات",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.headlineLarge,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgScreenshot2023173x129,
                        height: 173.v,
                        width: 129.h,
                        alignment: Alignment.bottomLeft,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildIMG(context),
        floatingActionButton: CustomFloatingButton(
          height: 44,
          width: 44,
          child: Icon(
            Icons.add,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  Widget _buildIMG(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
