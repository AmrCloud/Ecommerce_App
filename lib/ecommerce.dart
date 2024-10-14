import 'package:e_commerce/ecommerce_ads.dart';
import 'package:e_commerce/ecommerce_appbar.dart';
import 'package:e_commerce/ecommerce_icon.dart';
import 'package:e_commerce/ecommerce_product_conatiner.dart';
import 'package:e_commerce/ecommerce_svg_conatiner.dart';
import 'package:e_commerce/ecommerce_text_field.dart';
import 'package:e_commerce/ecommerce_text_style.dart';
import 'package:flutter/material.dart';
import 'ecommerce_navigation_bar.dart';




class Ecommerce extends StatefulWidget {
  const Ecommerce({super.key});

  @override
  _EcommerceState createState() => _EcommerceState();
}

class _EcommerceState extends State<Ecommerce> {
    int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const EcommerceAppbar(title: 'Mega Mall', fontSize: 18, actionIcon: [EcommerceIconWithStack(customIcon: Icons.notifications_none_rounded),EcommerceIconWithStack(customIcon: Icons.shopping_cart_outlined)], weight: FontWeight.w700, leadingIcon: null,fontColor: Color(0xff3669C9),),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              const EcommerceTextField(
                backgroundColor: Color(0xffFAFAFA),
              ),
              const SizedBox(
                height: 30,
              ),
              const EcommerceAdsGenerator(),
              const SizedBox(
                height: 27,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  EcommerceTextStyle(
                      text: 'Categories',
                      fontSize: 16,
                      weight: FontWeight.w500),
                  InkWell(
                    child: EcommerceTextStyle(
                      text: 'See All',
                      fontSize: 12,
                      weight: FontWeight.w500,
                      fontColor: Color(0xff3669C9),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16,),
              const EcommerceSvgGenerator(),
              const SizedBox(height: 50,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  EcommerceTextStyle(
                      text: 'Featured Product',
                      fontSize: 16,
                      weight: FontWeight.w500),
                  InkWell(
                    child: EcommerceTextStyle(
                      text: 'See All',
                      fontSize: 12,
                      weight: FontWeight.w500,
                      fontColor: Color(0xff3669C9),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              const EcommerceProductGenerator(),
              const SizedBox(height: 36,),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset('assets/Banner default(1).png',fit: BoxFit.cover,),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar:BottomNavBar(
          currentIndex: _currentIndex, 
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
