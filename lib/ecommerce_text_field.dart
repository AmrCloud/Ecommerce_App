import 'package:flutter/material.dart';
import 'ecommerce_icon.dart';

class EcommerceTextField extends StatelessWidget {
  final Color backgroundColor;
  const EcommerceTextField({super.key, required this.backgroundColor});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search Product Name',
        suffixIcon: const EcommerceIcon(customIcon: Icons.search,screen: null,),
        hintStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontFamily: 'DM Sans',
            color: Color(0xffC4C5C4)),
        fillColor: backgroundColor,
        filled: true,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xffFAFAFA),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: Color(0xffFAFAFA),
            width: 1.0,
          ),
        ),
      ),
    );
  }
}
