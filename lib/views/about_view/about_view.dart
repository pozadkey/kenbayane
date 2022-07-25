// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kenbayanerenewable/views/widgets/footer/footer_below_view/footer_below_view.dart';
import 'package:kenbayanerenewable/views/widgets/footer/footer_view/footer_view.dart';

import '../services_view/services_details.dart';
import '../widgets/nav/navbar.dart';
import 'about_sections/about_details.dart';
import 'about_sections/partners/partners.dart';

class AboutView extends StatefulWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.landscape) {
        return Scaffold(
            body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    NavBar(),
                    AboutDetails(),
                    ServicesDetails(),
                    Partners(),
                    FooterView(),
                    FooterBelowView()
                  ],
                ),
              ),
            )
          ],
        ));
      } else {
        return Scaffold(
            body: Column(
          children: [
            NavBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    AboutDetails(),
                    ServicesDetails(),
                    Partners(),
                    FooterView(),
                    FooterBelowView()
                  ],
                ),
              ),
            )
          ],
        ));
      }
    });
  }
}
