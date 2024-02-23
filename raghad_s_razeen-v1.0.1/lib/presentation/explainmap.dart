import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/razeenmap.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';
import 'package:raghad_s_razeen/widgets/custom_floating_button.dart';


class Explainmap extends StatelessWidget { //welcomescreen
Explainmap({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.WelcomeScreen, //الخلفية
                height: 820.v,
                width: 393.h,
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.center,

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(
                      flex: 46,
                    ),
                    
                    CustomElevatedButton(
                      width: 92.h,
                      text: "موافق",
                      onPressed: () {//بداية كود تنقل الزر
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Razeenmap()),//map
                          );},
                    ),
                    Spacer(
                      flex: 49,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomAppBar(context),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

   Widget _buildBottomAppBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }


 
}
