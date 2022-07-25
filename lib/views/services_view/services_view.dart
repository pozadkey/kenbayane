// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kenbayanerenewable/views/services_view/services_details.dart';
import 'package:kenbayanerenewable/views/widgets/footer/footer_below_view/footer_below_view.dart';
import 'package:kenbayanerenewable/views/widgets/footer/footer_view/footer_view.dart';

import '../widgets/nav/navbar.dart';

class ServicesView extends StatefulWidget {
  const ServicesView({Key? key}) : super(key: key);

  @override
  State<ServicesView> createState() => _ServicesViewState();
}

class _ServicesViewState extends State<ServicesView> {
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
                    ServicesDetails(),
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
                    ServicesDetails(),
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
