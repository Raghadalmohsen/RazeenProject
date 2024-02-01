import '../frame_164_screen/widgets/grid1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_floating_button.dart';

class Frame164Screen extends StatelessWidget {
  Frame164Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50.withOpacity(0.4),
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 394.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: 741.v,
                    width: 380.h,
                    margin: EdgeInsets.only(right: 14.h),
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.only(left: 23.h),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  ImageConstant.imgGroup178,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    height: 92.v,
                                    width: 219.h,
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: Container(
                                            decoration:
                                                AppDecoration.outlinePrimary3,
                                            child: Text(
                                              "إنجازاتك",
                                              style:
                                                  theme.textTheme.displayMedium,
                                            ),
                                          ),
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgPodium1,
                                          height: 75.adaptSize,
                                          width: 75.adaptSize,
                                          alignment: Alignment.topRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 45.v),
                                Container(
                                  margin: EdgeInsets.only(right: 11.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16.h,
                                    vertical: 95.v,
                                  ),
                                  decoration:
                                      AppDecoration.outlinePrimary6.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder33,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 20.v),
                                      _buildGrid(context),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgOutput13,
                          height: 134.v,
                          width: 128.h,
                          alignment: Alignment.bottomLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgFireworks4,
                          height: 124.v,
                          width: 127.h,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 75.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage23,
                          height: 124.v,
                          width: 128.h,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            left: 1.h,
                            top: 75.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomAppBar(context),
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 394.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrow3,
        margin: EdgeInsets.fromLTRB(37.h, 26.v, 327.h, 26.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildGrid(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 1.h),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisExtent: 97.v,
          crossAxisCount: 3,
          mainAxisSpacing: 16.h,
          crossAxisSpacing: 16.h,
        ),
        physics: NeverScrollableScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Grid1ItemWidget();
        },
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
