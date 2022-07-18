// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'footer_below_desktop.dart';
import 'footer_below_mobile.dart';

class FooterBelowView extends StatefulWidget {
  const FooterBelowView({Key? key}) : super(key: key);

  @override
  State<FooterBelowView> createState() => _FooterBelowViewState();
}

class _FooterBelowViewState extends State<FooterBelowView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width < 1000) {
        return FooterBelowMobile();
      } else {
        return FooterBelowDesktop();
      }
    });
  }
}
