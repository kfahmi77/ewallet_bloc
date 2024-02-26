import 'package:flutter/material.dart';

class ScreenUtils {
   final MediaQueryData _mediaQueryData ;
  double screenWidth;
  double screenHeight;
  double blockSizeHorizontal;
  double blockSizeVertical;

  ScreenUtils(BuildContext context)
      : _mediaQueryData = MediaQuery.of(context),
        screenWidth = 0.0,
        screenHeight = 0.0,
        blockSizeHorizontal = 0.0,
        blockSizeVertical = 0.0 {
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
  }
}