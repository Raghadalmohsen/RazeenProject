import 'package:flutter/material.dart';
import 'dart:math';
import 'package:collection/collection.dart';
import 'package:raghad_s_razeen/core/utils/image_constant.dart';
import 'package:raghad_s_razeen/core/utils/size_utils.dart';
import 'package:raghad_s_razeen/theme/app_decoration.dart';
import 'package:raghad_s_razeen/theme/theme_helper.dart';
import 'package:raghad_s_razeen/widgets/custom_image_view.dart';

class Speakgame extends StatefulWidget {
  @override
  _SpeakgameState createState() => _SpeakgameState();
}

class _SpeakgameState extends State<Speakgame> {
  late List<int> puzzleNumbers;
  int gridSize = 3;
  bool isGameCompleted = false;
  late int emptyTileIndex;

  @override
  void initState() {
    super.initState();
    startNewGame();
     checkGameCompletion();
  }

  void startNewGame() {
    puzzleNumbers = List.generate(gridSize * gridSize, (index) => index);
    puzzleNumbers.shuffle();
    emptyTileIndex = puzzleNumbers.indexOf(0);
    isGameCompleted = false;
    setState(() {});
  }

  void onTileClicked(int index) {
    if (!isGameCompleted) {
      if (isValidMove(index)) {
        moveTile(index);
      }
    }
  }

  bool isValidMove(int index) {
    int row = index ~/ gridSize;
    int col = index % gridSize;
    int emptyTileRow = emptyTileIndex ~/ gridSize;
    int emptyTileCol = emptyTileIndex % gridSize;

    return (row == emptyTileRow && (col - emptyTileCol).abs() == 1) ||
        (col == emptyTileCol && (row - emptyTileRow).abs() == 1);
  }

  void moveTile(int index) {
    setState(() {
      int temp = puzzleNumbers[index];
      puzzleNumbers[index] = puzzleNumbers[emptyTileIndex];
      puzzleNumbers[emptyTileIndex] = temp;
      emptyTileIndex = index;
    });

    WidgetsBinding.instance!.addPostFrameCallback((_) {
     
    });
  }

  void checkGameCompletion() {
    List<int> sortedPuzzleNumbers = List.from(puzzleNumbers);
    sortedPuzzleNumbers.sort();
    if (ListEquality().equals(puzzleNumbers, sortedPuzzleNumbers)) {
      isGameCompleted = true;
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Congratulations!'),
            content: Text('You solved the puzzle!'),
            actions: <Widget>[
              ElevatedButton(
                child: Text('Play Again'),
                onPressed: () {
                  Navigator.of(context).pop();
                  startNewGame();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 394.h,
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: SizedBox(
              height: SizeUtils.height,
              width: 394.h,
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: SizeUtils.height,
                      width: 394.h,
                      padding: EdgeInsets.only(
                        left: 32.h,
                        top: 92.v,
                        right: 32.h,
                      ),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            ImageConstant.Background,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: EdgeInsets.only(
                                top: 70.v,
                                right: 1.h,
                                left: 1,
                                bottom: 135,
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 1.h,
                                vertical: 62.v,
                              ),
                              decoration: //الكونتينر
                                  AppDecoration.outlinePrimary1.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder33,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  GridView.count(
                                    shrinkWrap: true,
                                    crossAxisCount: gridSize,
                                    children: List.generate(
                                        puzzleNumbers.length, (index) {
                                      return GestureDetector(
                                        onTap: () => onTileClicked(index),
                                        child: Container(
                                          color: puzzleNumbers[index] == 0
                                              ? Colors.grey
                                              : Colors.blue,
                                          margin: EdgeInsets.all(4.0),
                                          child: Center(
                                            child: Text(
                                              puzzleNumbers[index] == 0
                                                  ? ''
                                                  : puzzleNumbers[index]
                                                      .toString(),
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 58.v,
                              width: 301.h,
                              margin: EdgeInsets.only(top: 63.v),
                              decoration: BoxDecoration(
                                //ورا السؤال
                                color: appTheme.yellow100,
                                borderRadius: BorderRadius.circular(
                                  29.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              width: 256.h,
                              margin: EdgeInsets.only(top: 79.v,),
                              // decoration: AppDecoration.outlinePrimary1, //ينحذف
                              child: Text(
                                "                قم بترتيب الصوره",
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgImage167, //الصوت عند السؤال
                            height: 28.v,
                            width: 27.h,
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 18.h, top: 53),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage23114x111, //النجمة
                    height: 114.v,
                    width: 111.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 117.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgScreenshot2023, //رزين
                    height: 180.v,
                    width: 133.h,
                    alignment: Alignment.bottomLeft,
                    margin: EdgeInsets.only(
                      bottom: 65.v,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
