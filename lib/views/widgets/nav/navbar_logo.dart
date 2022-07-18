// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavLogo extends StatefulWidget {
  final Color myColor;
  const NavLogo({Key? key, required this.myColor}) : super(key: key);

  @override
  State<NavLogo> createState() => _NavLogoState();
}

class _NavLogoState extends State<NavLogo> {
  @override
  Widget build(BuildContext context) {
    final _logoFont = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 24,
        color: widget.myColor,
        fontWeight: FontWeight.w600);

    return Row(
      children: [
        Icon(
          FontAwesomeIcons.radiation,
          color: widget.myColor,
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          'KENBAYANE RENEWABLE.',
          style: _logoFont,
        ),
      ],
    );
  }
}
