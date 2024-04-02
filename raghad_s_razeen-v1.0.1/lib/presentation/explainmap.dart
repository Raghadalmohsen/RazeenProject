import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/razeenmap.dart';
import 'package:raghad_s_razeen/widgets/custom_bottom_bar.dart';
import 'package:raghad_s_razeen/widgets/custom_elevated_button.dart';

class Explainmap extends StatelessWidget {
  //welcomescreen
  Explainmap({Key? key})
      : super(
          key: key,
        );
 var player = AudioCache();//1
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
              Container(
                  height: 28.v,
                  width: 27.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(right: 260.h, bottom: 350),
                  child: ElevatedButton(
                      onPressed: () {
                       final player = AudioPlayer();
                       player.play(AssetSource('firstaudio1.mp3'));
                      },
                       style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.black,
                    elevation: 0,
                  ),
                      child: Image.asset(ImageConstant.imgImage164))),
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Razeenmap()), //map
                        );
                      },
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
