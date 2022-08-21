// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../models/projects_info.dart';

class ProjectsDetailsMobile extends StatefulWidget {
  const ProjectsDetailsMobile({Key? key}) : super(key: key);

  @override
  State<ProjectsDetailsMobile> createState() => _ProjectsDetailsMobileState();
}

class _ProjectsDetailsMobileState extends State<ProjectsDetailsMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final _headerFont = TextStyle(
        fontSize: width >= 700 ? 40 : 30,
        color: Color.fromARGB(251, 79, 17, 94),
        fontWeight: FontWeight.w700);

    final _subHeaderFont = TextStyle(
        fontSize: 14, color: Colors.grey[800], fontWeight: FontWeight.w400);

    final _subHeaderFont2 = TextStyle(
        fontSize: 14, color: Colors.grey[800], fontWeight: FontWeight.w600);

    return Container(
      padding: width >= 700
          ? EdgeInsets.fromLTRB(110, 40, 110, 40)
          : EdgeInsets.fromLTRB(20, 40, 20, 40),
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Projects',
            style: _headerFont,
          ),
          Divider(
            color: Color.fromARGB(251, 79, 17, 94),
            thickness: 1,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Some of our featured projects:',
            style: _subHeaderFont2,
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Our clients in the Energy & Renewables sphere include Utilities, Governments, Communities, Corporations & Individuals. Our Projects have ranged from simple small remote systems to some of the largest state of the art power generating facilities built. They include solar PV & thermal, biomass, wind, hydro, fuel cells, energy storage technologies, and hybrids. We are proud to be implementing challenging & forward-thinking projects that advance the state of our industry, including hybrid microgrids, and new innovative utility programs, architectures, energy services & project delivery models. ',
            style: _subHeaderFont,
          ),
          SizedBox(
            height: 30,
          ),
          Divider(
            color: Colors.grey[300],
          ),
          SizedBox(
            height: 40,
          ),
          ListView.separated(
            padding: EdgeInsets.all(0),
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                color: Colors.grey[300],
                height: 100,
              );
            },
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemCount: projectsList.length,
            itemBuilder: (context, index) {
              ProjectsInfo projects = projectsList[index];
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 700,
                    child: Image.asset(
                      projects.img,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    projects.title,
                    style: _subHeaderFont2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    projects.info,
                    style: _subHeaderFont,
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
