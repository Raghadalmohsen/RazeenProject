import 'package:flutter/material.dart';
import 'dart:async';
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
                              decoration: AppDecoration.outlinePrimary1.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder33,
                              ),
                              child: MemoryGame(), // Replace GridView with MemoryGame
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              height: 58.v,
                              width: 301.h,
                              margin: EdgeInsets.only(top: 63.v),
                              decoration: BoxDecoration(
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
                              margin: EdgeInsets.only(
                                top: 79.v,
                              ),
                              child: Text(
                                "               قم بمطابقة الصور",
                                maxLines: null,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgImage167,
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
                    imagePath: ImageConstant.imgImage23114x111,
                    height: 114.v,
                    width: 111.h,
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(top: 117.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgScreenshot2023,
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

class MemoryGame extends StatefulWidget {
  @override
  _MemoryGameState createState() => _MemoryGameState();
}

class _MemoryGameState extends State<MemoryGame> {
  List<String> _imagePaths = [
    'assets/images/water3.png',  // Replace with your image paths or URLs
    'assets/images/grandfather.png',
    'assets/images/sony.png',
    'assets/images/phone.png',
    'assets/images/water3.png',
    'assets/images/grandfather.png',
    'assets/images/sony.png',
    'assets/images/phone.png',
  ];

  List<bool> _revealed = [];
  int? _firstIndex;
  int? _secondIndex;
  int _moves = 0;
  bool _isLocked = false;

  @override
  void initState() {
    super.initState();
    _startGame();
  }

  void _startGame() {
    setState(() {
      _revealed = List.filled(_imagePaths.length, false);
      _firstIndex = null;
      _secondIndex = null;
      _moves = 0;
      _isLocked = false;
    });
  }

  void _onTap(int index) {
    if (_isLocked || _revealed[index]) return;

    setState(() {
      if (_firstIndex == null) {
        _firstIndex = index;
        _revealed[index] = true;
      } else {
        _secondIndex = index;
        _revealed[index] = true;
        _isLocked = true;

        if (_imagePaths[_firstIndex!] != _imagePaths[_secondIndex!]) {
          Timer(Duration(seconds: 1), () {
            setState(() {
              _revealed[_firstIndex!] = false;
              _revealed[_secondIndex!] = false;
              _firstIndex = null;
              _secondIndex = null;
              _isLocked = false;
            });
          });
        } else {
          _firstIndex = null;
          _secondIndex = null;
          _isLocked = false;
        }

        _moves++;
      }

      if (!_revealed.contains(false)) {
        _showDialog();
      }
    });
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('أحسنت',textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 22,
            ),),
          content: Text('رائع لقد فزت ب $_moves تحركات فقط',   textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 18,
              
              
            ),),
          actions: [
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close the dialog
                  Navigator.pop(context); // Navigate back to the previous screen
                },
                child: Text('موافق', style: TextStyle(fontSize: 18, color: Colors.blue)),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: _imagePaths.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => _onTap(index),
          child: Container(
            margin: EdgeInsets.all(8),
            color: _revealed[index] ? Colors.blue : Colors.grey,
            child: Center(
              child: _revealed[index]
                  ? Image.asset(
                      _imagePaths[index],
                      fit: BoxFit.cover,
                      height: 80.0, // Adjust the height as needed
                      width: 80.0, // Adjust the width as needed
                    )
                  : null,
            ),
          ),
        );
      },
    );
  }
}

// @override
  // void initState() {
  //   super.initState();
  //   startNewGame();
  //    checkGameCompletion();
  // }

  // void startNewGame() {
  //   puzzleNumbers = List.generate(gridSize * gridSize, (index) => index);
  //   puzzleNumbers.shuffle();
  //   emptyTileIndex = puzzleNumbers.indexOf(0);
  //   isGameCompleted = false;
  //   setState(() {});
  // }

  // void onTileClicked(int index) {
  //   if (!isGameCompleted) {
  //     if (isValidMove(index)) {
  //       moveTile(index);
  //     }
  //   }
  // }

  // bool isValidMove(int index) {
  //   int row = index ~/ gridSize;
  //   int col = index % gridSize;
  //   int emptyTileRow = emptyTileIndex ~/ gridSize;
  //   int emptyTileCol = emptyTileIndex % gridSize;

  //   return (row == emptyTileRow && (col - emptyTileCol).abs() == 1) ||
  //       (col == emptyTileCol && (row - emptyTileRow).abs() == 1);
  // }

  // void moveTile(int index) {
  //   setState(() {
  //     int temp = puzzleNumbers[index];
  //     puzzleNumbers[index] = puzzleNumbers[emptyTileIndex];
  //     puzzleNumbers[emptyTileIndex] = temp;
  //     emptyTileIndex = index;
  //   });

  //   WidgetsBinding.instance!.addPostFrameCallback((_) {
     
  //   });
  // }

  // void checkGameCompletion() {
  //   List<int> sortedPuzzleNumbers = List.from(puzzleNumbers);
  //   sortedPuzzleNumbers.sort();
  //   if (ListEquality().equals(puzzleNumbers, sortedPuzzleNumbers)) {
  //     isGameCompleted = true;
  //     showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           title: Text('Congratulations!'),
  //           content: Text('You solved the puzzle!'),
  //           actions: <Widget>[
  //             ElevatedButton(
  //               child: Text('Play Again'),
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //                 startNewGame();
  //               },
  //             ),
  //           ],
  //         );
  //       },
  //     );
  //   }
  // }




