// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kenbayanerenewable/views/widgets/footer/footer_below_view/footer_below_view.dart';
import 'package:kenbayanerenewable/views/widgets/footer/footer_view/footer_view.dart';

import '../widgets/nav/navbar.dart';
import 'contact_sections/contact_details.dart';

class ContactView extends StatefulWidget {
  const ContactView({Key? key}) : super(key: key);

  @override
  State<ContactView> createState() => _ContactViewState();
}

class _ContactViewState extends State<ContactView> {
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
                    ContactDetails(),
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
                  children: [ContactDetails(), FooterView(), FooterBelowView()],
                ),
              ),
            )
          ],
        ));
      }
    });
  }
}
