import 'package:flutter/material.dart';

import '../theme/theme.dart';

class Label extends StatelessWidget {
  final String label;
  const Label({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Text(
        label,
        style: inputLabelTextStyle,
      ),
    );
  }
}
