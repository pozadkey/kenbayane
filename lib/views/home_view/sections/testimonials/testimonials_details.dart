// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'testimonials_details_desktop.dart';
import 'testimonials_details_mobile.dart';

class TestimonialsDetails extends StatefulWidget {
  const TestimonialsDetails({Key? key}) : super(key: key);

  @override
  State<TestimonialsDetails> createState() => _TestimonialsDetailsState();
}

class _TestimonialsDetailsState extends State<TestimonialsDetails> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width < 1243) {
        return TestimonialsDetailsMobile();
      } else {
        return TestimonialsDetailsDesktop();
      }
    });
  }
}
