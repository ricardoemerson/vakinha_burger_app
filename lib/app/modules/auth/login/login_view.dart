import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/theme/theme.dart';
import '../../../core/widgets/app_bar_header.dart';
import '../../../core/widgets/button.dart';
import '../../../core/widgets/input_text.dart';
import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHeader(
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Login', style: sectionTitleTextStyle),
                      const SizedBox(height: 30),
                      const InputText(label: 'E-mail'),
                      const SizedBox(height: 30),
                      const InputText(label: 'Senha', obscureText: true),
                      const SizedBox(height: 40),
                      Button(
                        label: 'ENTRAR',
                        onPressed: () {},
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Não possui uma conta?'),
                          TextButton(
                            onPressed: () => Get.toNamed('auth/register'),
                            child: const Text(
                              'Cadastre-se',
                              style: boldTextStyle,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
