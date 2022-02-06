import 'package:flutter/material.dart';

import '../theme/theme.dart';

class Button extends StatelessWidget {
  final String label;
  final Color? color;
  final double? width;
  final double height;
  final bool rounded;
  final bool loading;
  final VoidCallback? onPressed;

  const Button({
    Key? key,
    required this.label,
    this.color,
    this.width,
    this.height = 50,
    this.rounded = false,
    this.loading = false,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double radius = rounded ? 30 : 8;

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: const StadiumBorder(),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (loading) ...[
              const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  color: buttonLabelColor,
                  strokeWidth: 3,
                ),
              ),
              const SizedBox(width: 10),
            ],
            Text(
              label,
              style: buttonLabelTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
