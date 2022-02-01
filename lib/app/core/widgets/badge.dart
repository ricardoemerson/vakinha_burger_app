import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/theme.dart';

class Badge extends StatelessWidget {
  final String label;
  final IconData? icon;
  final double? iconSize;
  final Color? color;

  const Badge({
    Key? key,
    required this.label,
    this.icon,
    this.iconSize = 18,
    this.color = lightGreyColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width / 2,
      padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              size: iconSize,
            ),
            const SizedBox(width: 3),
          ],
          Expanded(
            child: Text(
              label,
              maxLines: 1,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: badgeLabelTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
