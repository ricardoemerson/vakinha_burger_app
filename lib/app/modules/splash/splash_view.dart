import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../core/theme/theme.dart';
import '../../core/widgets/button.dart';
import 'splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundDarkColor,
        elevation: 0,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: backgroundDarkColor,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
        ),
      ),
      body: Container(
        color: backgroundDarkColor,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: context.width,
                child: Image.asset(
                  'assets/images/lanche.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: context.heightTransformer(reducedBy: 90),
                  ),
                  Image.asset('assets/images/logo.png'),
                  const SizedBox(height: 60),
                  Button(
                    label: 'ACESSAR',
                    width: context.widthTransformer(reducedBy: 40),
                    onPressed: () => Get.toNamed('/auth/login'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
