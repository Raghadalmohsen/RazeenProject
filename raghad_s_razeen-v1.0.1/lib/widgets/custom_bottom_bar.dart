import 'package:flutter/material.dart';
import 'package:raghad_s_razeen/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
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
      height: 88.v,
      decoration: BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary.withOpacity(1),
          width: 1.h,
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
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
                opacity: 0.7,
                child: CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                ),
              ),
              label: '',
            );
          }
          return BottomNavigationBarItem(
            icon: Opacity(
              opacity: 0.7,
              child: CustomImageView(
                imagePath: bottomMenuList[index].icon,
                height: 44.adaptSize,
                width: 44.adaptSize,
              ),
            ),
            activeIcon: Opacity(
              opacity: 0.7,
              child: CustomImageView(
                imagePath: bottomMenuList[index].activeIcon,
                height: 40.adaptSize,
                width: 40.adaptSize,
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
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
      color: Colors.white,
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
