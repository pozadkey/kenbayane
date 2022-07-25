// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'about_details_desktop.dart';
import 'about_details_mobile.dart';

class AboutDetails extends StatefulWidget {
  const AboutDetails({Key? key}) : super(key: key);

  @override
  State<AboutDetails> createState() => _AboutDetailsState();
}

class _AboutDetailsState extends State<AboutDetails> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width < 1243) {
        return AboutDetailsMobile();
      } else {
        return AboutDetailsDesktop();
      }
    });
  }
}
