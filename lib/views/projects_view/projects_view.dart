// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kenbayanerenewable/views/widgets/footer/footer_below_view/footer_below_view.dart';
import 'package:kenbayanerenewable/views/widgets/footer/footer_view/footer_view.dart';

import '../widgets/nav/navbar.dart';
import 'projects_sections/projects_details.dart';

class ProjectsView extends StatefulWidget {
  const ProjectsView({Key? key}) : super(key: key);

  @override
  State<ProjectsView> createState() => _ProjectsViewState();
}

class _ProjectsViewState extends State<ProjectsView> {
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
                    ProjectsDetails(),
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
                    ProjectsDetails(),
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
