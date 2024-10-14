import 'package:e_commerce/ecommerce_product_conatiner.dart';
import 'package:flutter/material.dart';
class EcommerceGrid extends StatelessWidget{
  const EcommerceGrid({super.key});
  @override
  Widget build(BuildContext context) {
    return GridView.builder( 
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 21,crossAxisSpacing: 13,childAspectRatio: 156/242), itemCount: gridList.length,itemBuilder: (context,index){
      return gridList[index];
    });
    
  }
}

List<EcommerceProductConatiner> gridList = [
  const EcommerceProductConatiner(productImage: 'assets/wiredHeadphones.png'),
  const EcommerceProductConatiner(productImage: 'assets/wirelessHeadphones.png'),
  const EcommerceProductConatiner(productImage: 'assets/wiredHeadphones.png'),
  const EcommerceProductConatiner(productImage: 'assets/wirelessHeadphones.png'),
  const EcommerceProductConatiner(productImage: 'assets/wiredHeadphones.png'),
  const EcommerceProductConatiner(productImage: 'assets/wirelessHeadphones.png'),
];
