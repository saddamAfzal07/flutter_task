import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Socials extends StatefulWidget {
  final String? icon;
  const Socials({Key? key, this.icon}) : super(key: key);

  @override
  State<Socials> createState() => _SocialsState();
}

class _SocialsState extends State<Socials> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.all(12),
      height: 40,
      width: 40,
      decoration: const BoxDecoration(
        color: Color(0xFFF5F6F9),
        shape: BoxShape.circle,
      ),
      child: SvgPicture.asset(widget.icon.toString()),
    );
  }
}
