import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar({super.key,required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex, 
      onTap: onTap, 
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/home.svg'),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/heart.svg'),
          label: 'Whislist',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/shop.svg'),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Container(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(
              shape: BoxShape.circle
            ),
            child: ClipOval(child: Image.asset('assets/pfp.jpg',fit: BoxFit.cover,)),
          ),
          label: 'Account',
        ),
      ],
      selectedItemColor: Colors.blue, 
      unselectedItemColor: Colors.grey, 
    );
  }
}
