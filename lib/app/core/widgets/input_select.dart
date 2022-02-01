import 'package:flutter/material.dart';

import '../theme/theme.dart';
import 'label.dart';

class InputSelect extends StatelessWidget {
  final String label;
  final String? hintText;
  final int? value;
  final List<DropdownMenuItem<int>>? items;
  final bool autoFocus;
  final void Function(int? value)? onChanged;

  const InputSelect({
    Key? key,
    required this.label,
    this.hintText,
    required this.value,
    required this.items,
    this.autoFocus = false,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Label(label: label),
        const SizedBox(height: 5),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: inputHintTextColor),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<int>(
              value: value,
              style: inputHintTextTextStyle,
              isExpanded: true,
              menuMaxHeight: 400,
              borderRadius: BorderRadius.circular(8),
              items: items,
              hint: Text(
                hintText ?? '',
                style: inputHintTextTextStyle,
              ),
              icon: const Icon(Icons.expand_more),
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }
}
