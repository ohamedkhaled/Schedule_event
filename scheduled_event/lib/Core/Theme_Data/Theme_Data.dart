



import 'package:flutter/material.dart';

import '../Resours_Manger/Color_Manger.dart';
import '../Resours_Manger/Font_Manger.dart';
import '../Resours_Manger/Style_Manger.dart';
import '../Resours_Manger/Values_Manger.dart';

ThemeData getAppTheme() => ThemeData(
  //main color
  primaryColor: ColorManager.primary,
  appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.white,
      elevation: AppSize.s0,
      shadowColor: ColorManager.white,
      titleTextStyle: getMediumStyle(fontSize: AppSize.s20, color: ColorManager.darkGrey)
  ),

  textTheme: TextTheme(
      displayLarge:
      getSemiBoldStyle(color: ColorManager.darkGrey, fontSize: FontSize.s16),
      titleSmall: getRegularStyle(color: ColorManager.Scandry,fontSize: FontSize.s12),
      headlineLarge: getSemiBoldStyle(
          color: ColorManager.primary, fontSize: FontSize.s16),
      headlineMedium :getBoldtStyle(color: ColorManager.darkGrey ,fontSize: FontSize.s60),
      titleMedium: getMediumStyle(
          color: ColorManager.Scandry.withOpacity(AppSize.s0_6), fontSize: FontSize.s14),
      bodyLarge: getRegularStyle(color: ColorManager.darkGrey,fontSize: FontSize.s14,),
      bodySmall: getRegularStyle(color: ColorManager.grey),
      bodyMedium :getSemiBoldStyle(color: ColorManager.darkGrey,fontSize:FontSize.s16 ),
      titleLarge :getRegularStyle(color: ColorManager.grey,fontSize: FontSize.s14)
  )
);
