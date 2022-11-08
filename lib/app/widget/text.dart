import 'package:flutter/material.dart';
import 'package:my_tsel/shared/theme.dart';

class CustomeTitle extends StatelessWidget {
  final Color color;
  final String text;
  const CustomeTitle({this.color = black, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: boldText.copyWith(color: color, fontSize: 18),
    );
  }
}
