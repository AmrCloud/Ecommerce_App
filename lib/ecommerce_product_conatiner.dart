import 'package:e_commerce/product_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'ecommerce_text_style.dart';

class EcommerceProductGenerator extends StatefulWidget {
  const EcommerceProductGenerator({super.key});

  @override
  _EcommerceProductGeneratorState createState() =>
      _EcommerceProductGeneratorState();
}

class _EcommerceProductGeneratorState extends State<EcommerceProductGenerator> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return productList[index];
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 15,
              ),
          itemCount: productList.length),
    );
  }
}

class EcommerceProductConatiner extends StatelessWidget {
  final String productImage;
  final Widget? screen;
  const EcommerceProductConatiner({super.key, required this.productImage, this.screen});
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          if (screen != null) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => screen!),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('No screen to navigate to!'),
              ),
            );
          }
        },
        child: Container(
          width: 180,
          height: 260,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: const Offset(0, 1),
                blurRadius: 3,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(productImage),
              const SizedBox(
                height: 20,
              ),
              const EcommerceTextStyle(
                  text: 'TMA-2 HD Wireless',
                  fontSize: 14,
                  weight: FontWeight.w500),
              const EcommerceTextStyle(
                text: 'Rp. 1.500.000',
                fontSize: 12,
                weight: FontWeight.w700,
                fontColor: Color(0xffFE3A30),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/star.svg'),
                      const EcommerceTextStyle(
                          text: '4.6', fontSize: 10, weight: FontWeight.w400),
                    ],
                  ),
                  const EcommerceTextStyle(
                      text: '86 Reviews', fontSize: 10, weight: FontWeight.w400),
                  SvgPicture.asset('assets/three_dots.svg')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<EcommerceProductConatiner> productList = [
  const EcommerceProductConatiner(productImage: 'assets/wiredHeadphones.png',screen: ProductPage(),),
  const EcommerceProductConatiner(
      productImage: 'assets/wirelessHeadphones.png',screen: ProductPage()),
  const EcommerceProductConatiner(productImage: 'assets/wiredHeadphones.png',screen: ProductPage()),
  const EcommerceProductConatiner(
      productImage: 'assets/wirelessHeadphones.png',screen: ProductPage()),
  const EcommerceProductConatiner(productImage: 'assets/wiredHeadphones.png',screen: ProductPage()),
  const EcommerceProductConatiner(
      productImage: 'assets/wirelessHeadphones.png',screen: ProductPage()),
];
