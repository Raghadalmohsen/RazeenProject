import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/initialscreen.dart';
import 'package:raghad_s_razeen/presentation/profile.dart';
import 'package:raghad_s_razeen/presentation/medals.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';

// ignore: must_be_immutable
class Setting extends StatelessWidget {
  //الاعدادات
  Setting({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
                  extendBodyBehindAppBar: true, // مايشتغل بس نقدر نستغني عنه \ زر الرجوع
        appBar: AppBar(
          // 1. Back Arrow Icon
          actions:<Widget>[
        IconButton(
            iconSize: 40,
            color: Color.fromARGB(255, 5, 0, 36),
            icon: Icon(Icons.arrow_forward),
            onPressed: () => Navigator.pop(context),
          ),

          ],
           backgroundColor: Color.fromARGB(0, 213, 204, 243),
          elevation: 0,
       
          leading: IconButton(  
             color: Color.fromARGB(0, 5, 0, 36),
             onPressed: (){},      
             icon: Icon(Icons.arrow_forward),)
          ),
        extendBody: true,
        bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

        resizeToAvoidBottomInset: false,

        body: Container(
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: SingleChildScrollView(
                  //for overflow
                  physics: NeverScrollableScrollPhysics(),

                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 50.v,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.BackgroundHouse, //خلفيه
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 75.v),
                        Container(
                          margin: EdgeInsets.only(
                            left: 6.h,
                            right: 9.h,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 21.h,
                            vertical: 115.v,
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
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        height: 50, //new
                                        width: 217, //new
                                        decoration: AppDecoration
                                            .outlinePrimary9
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder30,
                                        ),

                                        // margin: EdgeInsets.only(
                                        //   top: 5.v,
                                        //   bottom: 5.v,
                                        // ),
                                      
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Profile()),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                                foregroundColor:
                                                    Colors.black, //لون الخط
                                                elevation: 0,
                                                side: const BorderSide(
                                                  width: 1.0,
                                                  color: Color.fromARGB(
                                                      0, 244, 67, 54),
                                                )),
                                            child: const Text(
                                              ' الملف الشخصي',
                                              style: TextStyle(fontSize: 20),
                                            ))),

                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgImage31, //صوره فوق ملف شخصي
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
                                // decoration:
                                //     AppDecoration.outlinePrimary9.copyWith(//الاطراف البيضاء 
                                //   borderRadius:
                                //       BorderRadiusStyle.circleBorder30,
                                // ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 50, //new
                                        width: 217,//new
                                        // margin: EdgeInsets.only(
                                        //   top: 5.v,
                                        //   bottom: 5.v,
                                        // ),
                                       decoration: AppDecoration
                                            .outlinePrimary9
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder30,
                                        ),
                                        child: ElevatedButton(
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Medals()),
                                              );
                                            },
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    Colors.transparent,
                                                foregroundColor:
                                                    Colors.black, //لون الخط
                                                elevation: 0,
                                                side: const BorderSide(
                                                  width: 1.0,
                                                  color: Color.fromARGB(
                                                      0, 244, 67, 54),
                                                )),
                                            child: const Text(
                                              'الميداليات',
                                              style: TextStyle(fontSize: 20),
                                            ))),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgImage32, //ميداليات
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
                                // decoration:
                                //     AppDecoration.outlinePrimary9.copyWith(الاطراف 
                                //   borderRadius:
                                //       BorderRadiusStyle.circleBorder30,
                                // ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 50, //new
                                        width: 217,//new
                                        decoration: AppDecoration
                                            .outlinePrimary9
                                            .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder30,
                                        ),
                                        // margin: EdgeInsets.only(
                                        //   top: 5.v,
                                        //   bottom: 5.v,
                                        // ),
                                        // decoration:
                                        //     AppDecoration.outlinePrimary3,
                                        child: ElevatedButton(
  onPressed: () async {
    bool signOutConfirmed = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('تأكيد تسجيل الخروج',textAlign: TextAlign.right,
        style: TextStyle(
          fontSize: 22, // Set the desired font size
        ),),
          content: Text('هل أنت متأكد أنك تريد تسجيل الخروج؟',textAlign: TextAlign.right,
        style: TextStyle(
          fontSize: 16, // Set the desired font size
        ),),
     actions: <Widget>[
  TextButton(
    onPressed: () {
      Navigator.of(context).pop(false); // Return false to indicate cancel
    },
    child: Text('إلغاء', style: TextStyle(color: Colors.blue)),
  ),
  TextButton(
    onPressed: () {
      Navigator.of(context).pop(true); // Return true to indicate confirmation
    },
    child: Text('تأكيد', style: TextStyle(color: Colors.blue)),
  ),
],
        );
      },
    );

    if (signOutConfirmed ?? false) {
      try {
        await FirebaseAuth.instance.signOut();
        // Navigate to the sign-in or home screen after sign out
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Initialscreen()),
        );
      } catch (e) {
        // Handle sign out errors
        print('Failed to sign out: $e');
      }
    }
  },
  // Button styling
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.black, // Text color
    elevation: 0,
    side: const BorderSide(
      width: 1.0,
      color: Color.fromARGB(0, 244, 67, 54),
    ),
  ),
  // Button text
  child: const Text(
    ' تسجيل خروج',
    style: TextStyle(fontSize: 20),
  ),
)),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgImage30, //تسجيل خروج
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
              ),
              CustomImageView(
                imagePath: ImageConstant.imgImage23152x119, //نجمه
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
                imagePath: ImageConstant.imgScreenshot2023173x129, //الجد
                height: 206.v,
                width: 150.h,
                alignment: Alignment.bottomLeft,
              ),
            ],
          ),
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
