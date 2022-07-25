// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'projects_desktop.dart';
import 'projects_mobile.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width < 1243) {
        return ProjectsMobile();
      } else {
        return ProjectsDesktop();
      }
    });
  }
}
