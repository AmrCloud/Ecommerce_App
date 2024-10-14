import 'package:flutter/material.dart';

class EcommerceIcon extends StatefulWidget {
  final IconData customIcon;
  final Widget? screen;

  const EcommerceIcon({super.key, required this.customIcon, this.screen});

  @override
  _EcommerceIconState createState() => _EcommerceIconState();
}

class _EcommerceIconState extends State<EcommerceIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (widget.screen != null) {
          setState(() {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => widget.screen!),
            );
          });
        } else {
          print('hello');
        }
      },
      icon: Icon(widget.customIcon),
    );
  }
}

class EcommerceIconWithStack extends StatefulWidget {
  final IconData customIcon;

  const EcommerceIconWithStack({super.key, required this.customIcon});

  @override
  _EcommerceIconWithStackState createState() => _EcommerceIconWithStackState();
}

class _EcommerceIconWithStackState extends State<EcommerceIconWithStack> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(widget.customIcon),
        ),
        Positioned(
          top: 13,
          left: 25,
          child: Container(
            height: 9,
            width: 9,
            decoration: const BoxDecoration(
              color: Color(0xffFE3A30),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
