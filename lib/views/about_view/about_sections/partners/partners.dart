// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'Partners_desktop.dart';
import 'Partners_mobile.dart';

class Partners extends StatefulWidget {
  const Partners({Key? key}) : super(key: key);

  @override
  State<Partners> createState() => _PartnersState();
}

class _PartnersState extends State<Partners> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width < 1243) {
        return PartnersMobile();
      } else {
        return PartnersDesktop();
      }
    });
  }
}
