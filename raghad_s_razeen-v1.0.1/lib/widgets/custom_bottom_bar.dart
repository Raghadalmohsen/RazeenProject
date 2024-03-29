import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';
import 'package:raghad_s_razeen/presentation/initialscreen.dart';
import 'package:raghad_s_razeen/presentation/profile.dart';
import 'package:raghad_s_razeen/presentation/medals.dart';
import 'package:raghad_s_razeen/presentation/razeenmap.dart';
// import 'package:raghad_s_razeen/presentation/frame_ninetysix_screen/frame_ninetysix_screen.dart';

class CustomBottomBar extends StatefulWidget {//بار صفحه 107
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgImg08961,
      activeIcon: ImageConstant.imgImg08961,
      type: BottomBarEnum.Img08961,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgImg08981,
      activeIcon: ImageConstant.imgImg08981,
      type: BottomBarEnum.Img08981,
      isCircle: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgMedal22,
      activeIcon: ImageConstant.imgMedal22,
      type: BottomBarEnum.Medal22,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.v,
      decoration: BoxDecoration(
        borderRadius:
       BorderRadiusStyle.roundedBorder33,
                                      
      ),
    child: SingleChildScrollView(
                  //for overflow
                  physics: NeverScrollableScrollPhysics(),
      child: BottomNavigationBar(
        //backgroundColor: Color.fromARGB(153, 255, 255, 255),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          if (bottomMenuList[index].isCircle) {
            return BottomNavigationBarItem(
              icon: Opacity(
                opacity: 1,
                child: CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                   margin: EdgeInsets.only(
                    bottom: 30.v,
                   ),
                ),
              ),
              label: '',
            );
          }
          return BottomNavigationBarItem(
            icon: Opacity(
              opacity: 1,
              child: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 44.adaptSize,
                width: 44.adaptSize,
                 margin: EdgeInsets.only(
                    bottom: 20.v,
                   ),
              ),
            ),
            activeIcon: Opacity(
              opacity: 1,
              child: CustomImageView(
                imagePath: bottomMenuList[index].activeIcon,
                height: 44.adaptSize,
                width: 44.adaptSize,
                 margin: EdgeInsets.only(
                    bottom: 20.v,
                   ),
              ),
            ),
            label: '',
          );
        }),
       onTap: (index) {
  setState(() {
    selectedIndex = index;
  });
  BottomBarEnum selectedType = bottomMenuList[index].type;
  switch (selectedType) {
    case BottomBarEnum.Img08961:
      Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));//ملف شخصي
      break;
    case BottomBarEnum.Img08981:
      Navigator.push(context, MaterialPageRoute(builder: (context) => Razeenmap()));//خريطه
      break;
    case BottomBarEnum.Medal22:
      Navigator.push(context, MaterialPageRoute(builder: (context) => Medals()));//ميداليات
      break;
    default:
      break;
  }
},
      ),
    ),
    );
  }
}

enum BottomBarEnum {
  Img08961,
  Img08981,
  Medal22,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isCircle = false,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;

  bool isCircle;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
