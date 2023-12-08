import 'package:flutter/material.dart';
import 'package:restaurant/const/color.dart';
import 'package:restaurant/const/styling.dart';

class TxtDecoration {

  static TextTheme lightTextTheme = TextTheme(

    headlineLarge: TextStyle().copyWith(fontSize: Dimensions.textSizeExtraLarge, fontWeight: FontWeight.w900, color: colorDecoration.fontOverGreen),
    headlineMedium: TextStyle().copyWith(fontSize: Dimensions.textSizeLarge, fontWeight: FontWeight.bold, color: colorDecoration.fontOverGreen),
    headlineSmall: TextStyle().copyWith(fontSize: Dimensions.textSizeSemiLarge, fontWeight: FontWeight.w400, color: colorDecoration.fontOverGreen),

    bodyLarge: TextStyle().copyWith(fontSize: Dimensions.textSizeMedium,fontWeight:Dimensions.semiBold ,color: colorDecoration.fontOverGreen),
    bodyMedium: TextStyle().copyWith(fontSize: Dimensions.textSizeDefault,color: colorDecoration.fontOverGreen),
    
  );
}