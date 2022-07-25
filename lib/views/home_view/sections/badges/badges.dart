// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'badges_desktop.dart';
import 'badges_mobile.dart';

class Badges extends StatefulWidget {
  const Badges({Key? key}) : super(key: key);

  @override
  State<Badges> createState() => _BadgesState();
}

class _BadgesState extends State<Badges> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width < 1243) {
        return BadgesMobile();
      } else {
        return BadgesDesktop();
      }
    });
  }
}
