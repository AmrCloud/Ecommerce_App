import 'package:flutter/material.dart';

class EcommerceTextStyle extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight weight;
  final String fontFamily;
  final Color fontColor;
  const EcommerceTextStyle(
      {super.key,
      required this.text,
      required this.fontSize,
      required this.weight,
      this.fontFamily = 'DM Sans',
      this.fontColor = const Color.fromARGB(255, 0, 0, 0)});
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: weight,
        fontFamily: fontFamily,
        color: fontColor,
      ),
    );
  }
}
