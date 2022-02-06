import 'package:flutter/material.dart';

import '../theme/theme.dart';

class AppBarHeader extends AppBar {
  AppBarHeader({
    Key? key,
    double elevation = 2,
  }) : super(
            key: key,
            backgroundColor: backgroundColor,
            elevation: elevation,
            centerTitle: true,
            title: Image.asset(
              'assets/images/logo.png',
              width: 80,
            ),
            iconTheme: const IconThemeData(
              color: blackColor,
            ));
}
