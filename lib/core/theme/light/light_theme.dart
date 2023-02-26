import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pollution_ai/core/constants/styles.dart';
import 'package:pollution_ai/core/theme/light/app_colors_light.dart';

final appBarTheme = AppBarTheme(
    elevation: 1,
    centerTitle: true,
    backgroundColor: Colors.white,
    toolbarHeight: 60.h,
    iconTheme: IconThemeData(
      color: Colors.black,
      size: 24.h,
    ));

final elevatedButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
        elevation: MaterialStateProperty.all(2),
        fixedSize: MaterialStateProperty.all(Size(206.w, 52.h)),
        padding: MaterialStateProperty.all(
            EdgeInsets.symmetric(vertical: 13.h, horizontal: 10.w)),
        backgroundColor:
            MaterialStateProperty.all(AppColorsLight.kAppPrimaryColor),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r)))));

final ThemeData lightTheme = ThemeData.light().copyWith(
    textTheme: TextTheme(
        bodySmall: AppStyles.kBodySmallTextStyle,
        bodyMedium: AppStyles.kBodyMediumTextStyle,
        headlineLarge: AppStyles.kHeadingTextStyle),
    scaffoldBackgroundColor: AppColorsLight.kScaffoldBackGroundColor,
    elevatedButtonTheme: elevatedButtonTheme,
    appBarTheme: appBarTheme);
