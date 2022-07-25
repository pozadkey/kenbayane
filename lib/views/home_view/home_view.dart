// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../services_view/services_details.dart';
import '../widgets/footer/footer_below_view/footer_below_view.dart';
import '../widgets/footer/footer_view/footer_view.dart';
import '../widgets/nav/navbar.dart';
import 'sections/badges/badges.dart';
import 'sections/intro/intro.dart';
import 'sections/projects/projects.dart';
import 'sections/testimonials/testimonials_details.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
                    Intro(),
                    ServicesDetails(),
                    Projects(),
                    Badges(),
                    TestimonialsDetails(),
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
                    Intro(),
                    ServicesDetails(),
                    Projects(),
                    Badges(),
                    TestimonialsDetails(),
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
