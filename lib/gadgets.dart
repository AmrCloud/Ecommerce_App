import 'package:e_commerce/ecommerce.dart';
import 'package:e_commerce/ecommerce_appbar.dart';
import 'package:e_commerce/ecommerce_grid.dart';
import 'package:e_commerce/ecommerce_icon.dart';
import 'package:e_commerce/ecommerce_text_field.dart';
import 'package:e_commerce/ecommerce_text_style.dart';
import 'package:flutter/material.dart';

class Gadgets extends StatefulWidget {
  const Gadgets({super.key});

  @override
  State<Gadgets> createState() => _GadgetsState();
}

class _GadgetsState extends State<Gadgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const EcommerceAppbar(
            title: 'Category',
            fontSize: 16,
            actionIcon: [
              EcommerceIconWithStack(customIcon: Icons.shopping_cart_outlined)
            ],
            weight: FontWeight.w700,
            leadingIcon: EcommerceIcon(customIcon: Icons.arrow_back,screen: Ecommerce(),)),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: const Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                EcommerceTextStyle(
                    text: 'Gadget', fontSize: 24, weight: FontWeight.w700),
                SizedBox(
                  height: 20,
                ),
                EcommerceTextField(
                  backgroundColor: Color(0xffFAFAFA),
                ),
                SizedBox(height: 30,),
                Expanded(child: EcommerceGrid()),
              ],
            ),
          ),
        ),
      );
  }
}
