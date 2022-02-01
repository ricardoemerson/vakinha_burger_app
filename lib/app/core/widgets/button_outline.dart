import 'package:flutter/material.dart';

import '../theme/theme.dart';

class ButtonOutline extends StatelessWidget {
  final String label;
  final double? labelSize;
  final IconData? sufixIcon;
  final bool rounded;
  final bool loading;
  final VoidCallback? onPressed;

  const ButtonOutline({
    Key? key,
    required this.label,
    this.labelSize,
    this.sufixIcon,
    this.rounded = false,
    this.loading = false,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double radius = rounded ? 30 : 8;
    final disabled = onPressed == null;

    return SizedBox(
      width: double.infinity,
      height: 52,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: disabled ? Colors.grey[100] : Colors.transparent,
          side: BorderSide(color: disabled ? greyColor : darkGreyColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
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
              style: buttonLabelTextStyle.copyWith(
                color: disabled ? Colors.grey[600] : buttonLabelColor,
                fontSize: labelSize ?? buttonLabelTextStyle.fontSize,
              ),
            ),
            if (sufixIcon != null) ...[
              const SizedBox(width: 5),
              Icon(
                sufixIcon,
                color: buttonLabelColor,
              ),
            ],
          ],
        ),
      ),
    );
  }
}
