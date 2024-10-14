import 'package:e_commerce/ecommerce.dart';
import 'package:e_commerce/ecommerce_appbar.dart';
import 'package:e_commerce/ecommerce_icon.dart';
import 'package:e_commerce/ecommerce_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EcommerceAppbar(
        title: 'Detail Product',
        fontSize: 16,
        actionIcon: [
          EcommerceIconWithStack(customIcon: Icons.redo_outlined),
        ],
        weight: FontWeight.w500,
        leadingIcon: EcommerceIcon(
          customIcon: Icons.arrow_back,
          screen: Ecommerce(),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/wirelessHeadphones.png',
                  height: 305,
                  width: 280,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const EcommerceTextStyle(
                text: 'TMA-2HD Wireless',
                fontSize: 24,
                weight: FontWeight.w700),
            const SizedBox(
              height: 10,
            ),
            const EcommerceTextStyle(
              text: 'Rp 1.500.000',
              fontSize: 16,
              weight: FontWeight.w500,
              fontColor: Color(0xffFE3A30),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/star.svg'),
                const EcommerceTextStyle(
                    text: '4.6', fontSize: 14, weight: FontWeight.w400),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: EcommerceTextStyle(
                      text: '86 Reviews',
                      fontSize: 14,
                      weight: FontWeight.w400),
                ),
                Container(
                  width: 100,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffEEFAF6),
                  ),
                  child: Center(
                    child: const EcommerceTextStyle(
                      text: 'Tersedia : 250',
                      fontSize: 12,
                      weight: FontWeight.w500,
                      fontColor: Color(0xff3A9B7A),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(),
            Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset('assets/pfp2.png'),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const EcommerceTextStyle(
                          text: 'Shop Larson Electronic',
                          fontSize: 14,
                          weight: FontWeight.w500),
                      Row(
                        children: [
                          const EcommerceTextStyle(
                              text: 'Official Store',
                              fontSize: 12,
                              weight: FontWeight.w400),
                          SvgPicture.asset('assetsveri.svg'),
                        ],
                      )
                    ],
                  ),
                ),
                const EcommerceIcon(
                  customIcon: Icons.arrow_forward_ios,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(),
            const SizedBox(
              height: 30,
            ),
            const EcommerceTextStyle(
                text: 'Description Product',
                fontSize: 16,
                weight: FontWeight.w700),
            const SizedBox(
              height: 15,
            ),
            const EcommerceTextStyle(
                text:
                    """The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers. \nThe speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers. """,
                fontSize: 14,
                weight: FontWeight.w400),
            const SizedBox(
              height: 48,
            ),
            SizedBox(
              height: 48,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xffFE3A30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          EcommerceTextStyle(
                              text: 'Added',
                              fontSize: 14,
                              weight: FontWeight.w500,fontColor: Colors.white,),
                          SvgPicture.asset('assets/heart.svg'),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Ecommerce()),
                    );
                  },
                  child: Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff3669C9),
                      ),
                      child: Center(
                        child: EcommerceTextStyle(
                            text: 'Add to Cart',
                            fontSize: 14,
                            weight: FontWeight.w500,fontColor: Colors.white,),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
