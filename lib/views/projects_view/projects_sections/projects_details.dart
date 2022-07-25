// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'projects_details_desktop.dart';
import 'projects_details_mobile.dart';

class ProjectsDetails extends StatefulWidget {
  const ProjectsDetails({Key? key}) : super(key: key);

  @override
  State<ProjectsDetails> createState() => _ProjectsDetailsState();
}

class _ProjectsDetailsState extends State<ProjectsDetails> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width < 1243) {
        return ProjectsDetailsMobile();
      } else {
        return ProjectsDetailsDesktop();
      }
    });
  }
}
