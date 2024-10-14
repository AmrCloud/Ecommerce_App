import 'package:e_commerce/ecommerce_icon.dart';
import 'package:flutter/material.dart';
import 'ecommerce_text_style.dart';

class EcommerceAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double fontSize;
  final FontWeight weight;
  final Color fontColor;
  final List <EcommerceIconWithStack> actionIcon;
  final EcommerceIcon? leadingIcon;
  const EcommerceAppbar({super.key, required this.title, required this.fontSize,this.fontColor = const Color(0xff000000), required this.actionIcon, required this.weight, required this.leadingIcon});
  @override
  Widget build(BuildContext context) {
    return AppBar(
          centerTitle: true,
          title: EcommerceTextStyle(
            text: title,
            fontSize: fontSize,
            weight: weight,
            fontColor: fontColor,
          ),
          actions: actionIcon,
          leading: leadingIcon,
        );
  }
  
  @override
  Size get preferredSize => const Size(375, 55);
}
