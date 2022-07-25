// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kenbayanerenewable/views/services_view/services_details_desktop.dart';
import 'package:kenbayanerenewable/views/services_view/services_details_mobile.dart';

class ServicesDetails extends StatefulWidget {
  const ServicesDetails({Key? key}) : super(key: key);

  @override
  State<ServicesDetails> createState() => _ServicesDetailsState();
}

class _ServicesDetailsState extends State<ServicesDetails> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width < 1243) {
        return ServicesDetailsMobile();
      } else {
        return ServicesDetailsDesktop();
      }
    });
  }
}
