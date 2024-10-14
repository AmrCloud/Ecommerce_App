import 'package:e_commerce/gadgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'ecommerce_text_style.dart';

class EcommerceSvgGenerator extends StatelessWidget {
  const EcommerceSvgGenerator({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return svgList[index];
          },
          separatorBuilder: (context, index) => const SizedBox(
                width: 32,
              ),
          itemCount: svgList.length),
    );
  }
}

class EcommerceSvgConatiner extends StatelessWidget {
  final Color backgroundColor;
  final String svgPath;
  final String categoryName;
  final Widget? screen;
  const EcommerceSvgConatiner(
      {super.key,
      required this.backgroundColor,
      required this.svgPath,
      required this.categoryName,
      this.screen});
  @override
  Widget build(BuildContext context) {
    return InkWell(
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
      child: Column(
        children: [
          Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: backgroundColor,
            ),
            child: Center(
              child: SvgPicture.asset(svgPath),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          EcommerceTextStyle(
            text: categoryName,
            fontSize: 14,
            weight: FontWeight.w400,
          )
        ],
      ),
    );
  }
}

List<EcommerceSvgConatiner> svgList = [
  const EcommerceSvgConatiner(
      backgroundColor: Color(0xffE4F3EA),
      svgPath: 'assets/carrot.svg',
      categoryName: 'Foods'),
  const EcommerceSvgConatiner(
      backgroundColor: Color(0xffFFECE8),
      svgPath: 'assets/gifts.svg',
      categoryName: 'Gift'),
  const EcommerceSvgConatiner(
      backgroundColor: Color(0xffFFF6E4),
      svgPath: 'assets/fashion.svg',
      categoryName: 'Fashion'),
  const EcommerceSvgConatiner(
    backgroundColor: Color(0xffF1EDFC),
    svgPath: 'assets/gadgets.svg',
    categoryName: 'Gadget',
    screen: Gadgets(),
  ),
  const EcommerceSvgConatiner(
      backgroundColor: Color(0xffE4F3EA),
      svgPath: 'assets/gadgets.svg',
      categoryName: 'Compute'),
  const EcommerceSvgConatiner(
      backgroundColor: Color(0xffFFECE8),
      svgPath: 'assets/gadgets.svg',
      categoryName: 'Foods'),
  const EcommerceSvgConatiner(
      backgroundColor: Color(0xffFFF6E4),
      svgPath: 'assets/gadgets.svg',
      categoryName: 'Foods'),
];
