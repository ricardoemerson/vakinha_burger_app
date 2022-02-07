import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/theme/theme.dart';
import '../../../core/widgets/app_bar_header.dart';
import '../../../core/widgets/button.dart';
import '../../../core/widgets/input_text.dart';
import 'register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHeader(
        elevation: 0,
      ),
      body: SingleChildScrollView(
        reverse: true,
        child: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Cadastro', style: sectionTitleTextStyle),
                  const Text('Preencha os campos abaixo para criar o  seu cadastro.',
                      style: contentTextStyle),
                  const SizedBox(height: 30),
                  const InputText(label: 'Nome'),
                  const SizedBox(height: 30),
                  const InputText(label: 'E-mail'),
                  const SizedBox(height: 30),
                  const InputText(label: 'Senha', obscureText: true),
                  const SizedBox(height: 40),
                  const InputText(label: 'Confirmação da senha', obscureText: true),
                  const SizedBox(height: 40),
                  Button(
                    label: 'CADASTRAR',
                    onPressed: () {},
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
