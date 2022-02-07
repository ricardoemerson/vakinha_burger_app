import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../theme/theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData theme = ThemeData(
    colorScheme: ThemeData().colorScheme.copyWith(
          primary: primaryColor,
          secondary: secondaryColor,
        ),
    fontFamily: 'mplus1',
    scaffoldBackgroundColor: backgroundColor,
    primaryColor: primaryColor,
    primaryColorDark: titleColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: backgroundColor,
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      titleTextStyle: titleTextStyle,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: backgroundColor,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primaryColor,
        textStyle: const TextStyle(fontFamily: 'mplus1'),
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      selectedIconTheme: IconThemeData(color: blackColor),
      selectedLabelStyle: boldTextStyle,
      unselectedItemColor: greyColor,
      unselectedIconTheme: IconThemeData(color: greyColor),
    ),
  );
}
