// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'footer_view_desktop.dart';
import 'footer_view_mobile.dart';

class FooterView extends StatefulWidget {
  const FooterView({Key? key}) : super(key: key);

  @override
  State<FooterView> createState() => _FooterViewState();
}

class _FooterViewState extends State<FooterView> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width < 810) {
        return FooterViewMobile();
      } else {
        return FooterViewDesktop();
      }
    });
  }
}
