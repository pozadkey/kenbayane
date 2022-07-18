// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kenbayanerenewable/views/home_view/sections/badges/badges.dart';
import 'package:kenbayanerenewable/views/home_view/sections/testimonials/testimonials_details.dart';
import 'package:kenbayanerenewable/views/services_view/services_details.dart';
import 'package:kenbayanerenewable/views/services_view/services_view.dart';
import 'package:kenbayanerenewable/views/widgets/footer/footer_view/footer_view_desktop.dart';
import '../widgets/footer/footer_below_view/footer_below_view.dart';
import '../widgets/footer/footer_view/footer_view.dart';
import '../widgets/nav/navbar.dart';
import 'sections/intro/intro.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
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
                Badges(),
                TestimonialsDetails(),
                FooterViewDesktop(),
                FooterBelowView()
              ],
            ),
          ),
        )
      ],
    ));
  }
}
