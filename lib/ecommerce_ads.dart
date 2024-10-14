import 'package:flutter/material.dart';


class EcommerceAdsGenerator extends StatelessWidget {
  const EcommerceAdsGenerator({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        height: 150,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 150,
                child: Image.asset(imagePath[index]),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
                  width: 15,
                ),
            itemCount: imagePath.length),
      ),
    );
  }
}

List<String> imagePath = ['assets/Ad1.jpg', 'assets/Ad2.jpg'];