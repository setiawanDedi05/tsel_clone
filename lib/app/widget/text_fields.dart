import 'package:flutter/material.dart';
import 'package:my_tsel/app/widget/text.dart';
import 'package:my_tsel/shared/theme.dart';

class CustomeTextFields extends StatelessWidget {
  final String label;
  final Color borderColor;
  final String? hint;
  final bool autoFocus;
  final TextInputType keyboardType;
  final Function(String)? onChange;
  final TextEditingController controller;
  const CustomeTextFields(
      {super.key, required this.label, this.keyboardType = TextInputType.name, this.autoFocus = false, this.onChange,  required this.controller, this.borderColor = gray, this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomeTitle(text: label),
        SizedBox(
          height: 8,
        ),
        TextField(
          onChanged: onChange,
          keyboardType: keyboardType,
          autofocus: autoFocus,
          decoration:
              InputDecoration(border: OutlineInputBorder(), hintText: hint),
        ),
      ],
    );
  }
}
