import '../frame_164_screen/widgets/grid1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/widgets/app_bar/appbar_leading_image.dart';
import 'package:raghad_s_razeen/widgets/app_bar/custom_app_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_floating_button.dart';

class Frame164Screen extends StatelessWidget {//ميداليات
  Frame164Screen({Key? key})
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
       
        body: SizedBox(
         height: 764.v,
          width: double.maxFinite,
          // child: Column(
          //   mainAxisSize: MainAxisSize.min,
          //   children: [
          //     SizedBox(height: 20.v),
          //     Expanded(
          //       child: SingleChildScrollView(
          //         child: Container(
          //            padding: EdgeInsets.symmetric(
          //           horizontal: 20.h,
          //           vertical: 45.v,),
          //           margin: EdgeInsets.only(right: 14.h),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                    horizontal: 30.h,//غيرنا 20
                    vertical: 65.v,//غيرنا 45
                  ),
                            decoration: BoxDecoration(
                               border: Border.all(),
                              image: DecorationImage(
                                image: AssetImage(
                                  ImageConstant.imgImage651,//خلفيه
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 SizedBox(height: 55.v),//غ 75
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    height: 65.v,
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
                                              "إنجازاتك       "    ,
                                              style:
                                                  theme.textTheme.displayMedium,
                                            ),
                                          ),
                                        ),
                                        CustomImageView(//صوره جمب الانجازات
                                          imagePath: ImageConstant.imgPodium1,
                                          height: 65.adaptSize,
                                          width: 65.adaptSize,
                                          alignment: Alignment.topRight,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.v),/////غ
                                Container(
                                  margin: EdgeInsets.only(right: 2.h),
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 23.h,
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
                                      SizedBox(height: 0.v),
                                      _buildGrid(context),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgOutput13,//صورة رزين
                          height: 134.v,
                          width: 128.h,
                          alignment: Alignment.bottomLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgFireworks4,//صورة الي ورا النجمة
                          height: 124.v,
                          width: 127.h,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(top: 165.v),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage23,//النجمة
                          height: 124.v,
                          width: 128.h,
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.only(
                            left: 1.h,
                            top: 165.v,
                          ),
                        ),
                      ],
                    ),
                  ),
                // ),
              // ),
            // ],
          // ),
        // ),
        bottomNavigationBar: _buildBottomAppBar(context),
        // floatingActionButton: CustomFloatingButton(
        //   height: 44,
        //   width: 44,
        //   child: Icon(
        //     Icons.add,
        //   ),
        // ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  // PreferredSizeWidget _buildAppBar(BuildContext context) {
  //   return CustomAppBar(
  //     leadingWidth: 394.h,
  //     leading: AppbarLeadingImage(
  //       imagePath: ImageConstant.imgArrow3,// القديم صورة السهم
  //       margin: EdgeInsets.fromLTRB(37.h, 26.v, 327.h, 26.v),
  //     ),
  //   );
  // }

  /// Section Widget
  Widget _buildGrid(BuildContext context) {//الميداليات الخمسة
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
