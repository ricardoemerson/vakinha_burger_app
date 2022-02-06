import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/widgets/app_bar_header.dart';
import '../../core/widgets/button.dart';
import 'splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHeader(
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Button(
            label: 'Acessar',
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
