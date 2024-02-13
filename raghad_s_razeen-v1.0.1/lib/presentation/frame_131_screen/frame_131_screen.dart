import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_floating_button.dart';

class Frame131Screen extends StatelessWidget {
  Frame131Screen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true, //زر الرجوع
        appBar: AppBar(
          // 1. Back Arrow Icon
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: Color.fromARGB(0, 17, 7, 51),
          elevation: 0,
        ),



        extendBody: true,
        bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: Container(
            decoration: BoxDecoration(
            
                    border: Border.all(),
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup225,//خلفيه
                       
                      ),
                      fit: BoxFit.cover,
                    ),
                  
                  ),
  child: Container(
                    decoration: AppDecoration.outlinePrimary1.copyWith(
                      border: Border.all(),
                    ),
                    
          child: Stack(      
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 31.h,
                    top: 125.v,//مكان الاشياء
                    right: 40.h,
                  ),
                 
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildStackView(context),
                        SizedBox(height: 85.v),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 41.v),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    
                                    Container(
                                      margin: EdgeInsets.only(right: 16.h),
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 1.h,
                                        vertical: 14.v,
                                      ),
                                    
                                      decoration: AppDecoration.outlinePrimary2
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder33,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SizedBox(height: 31.v),
                                          CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImg08123,
                                            height: 90.v,
                                            width: 86.h,
                                          ),
                                          SizedBox(height: 15.v),
                                          Container(
                                            decoration:
                                                AppDecoration.outlinePrimary3,
                                            child: Text(
                                              "قصة",
                                              style:
                                                  theme.textTheme.headlineSmall,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 15.v),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage44,
                                      height: 93.v,
                                      width: 83.h,
                                      alignment: Alignment.centerRight,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 5.h,
                                  top: 150.v,
                                ),
                                padding: EdgeInsets.symmetric(
                                  horizontal: 6.h,
                                  vertical: 19.v,
                                ),
                                decoration:
                                    AppDecoration.outlinePrimary2.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder33,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(height: 26.v),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImg0810267x68,
                                      height: 67.v,
                                      width: 68.h,
                                      radius: BorderRadius.circular(
                                        1.h,
                                      ),
                                    ),
                                    SizedBox(height: 3.v),
                                    Container(
                                      width: 77.h,
                                      decoration: AppDecoration.outlinePrimary3,
                                      child: Text(
                                        "اختبر نفسك",
                                        maxLines: null,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.headlineSmall,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 11.h,
                                  bottom: 60.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Container(
                                        margin: EdgeInsets.only(left: 12.h),
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 5.h,
                                          vertical: 14.v,
                                        ),
                                        decoration: AppDecoration
                                            .outlinePrimary2
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder33,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            SizedBox(height: 37.v),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgImg07952,
                                              height: 77.v,
                                              width: 79.h,
                                            ),
                                            SizedBox(height: 22.v),
                                            Container(
                                              decoration:
                                                  AppDecoration.outlinePrimary3,
                                              child: Text(
                                                "العب",
                                                style: theme
                                                    .textTheme.headlineSmall,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5.v),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgImage45,
                                      height: 84.v,
                                      width: 94.h,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  // ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgScreenshot2023,//رزين
                height: 141.v,
                width: 103.h,
                  margin: EdgeInsets.only(
                    top: 60.v,
                    right: 5.h,
                  ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 165.h,
                  margin: EdgeInsets.only(
                    top: 155.v,
                    right: 88.h,
                  ),
                  decoration: AppDecoration.outlinePrimary3,
                  child: Text(
                    "كيف ألبي طلبات جدي؟",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
              ),
            ],
          // ),
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
  Widget _buildStackView(BuildContext context) {
    return SizedBox(
      height: 71.v,
      width: 317.h,
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 57.v,
              width: 317.h,
              decoration: BoxDecoration(
                color: appTheme.yellow100,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(29.h),
                  topRight: Radius.circular(28.h),
                  bottomLeft: Radius.circular(29.h),
                  bottomRight: Radius.circular(28.h),
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
          CustomImageView(
            imagePath: ImageConstant.imgImage164,
            height: 28.v,
            width: 27.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 12.h),
          ),
        ],
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
