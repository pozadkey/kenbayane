// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:kenbayanerenewable/models/projects_info.dart';

class ProjectsDetailsDesktop extends StatefulWidget {
  const ProjectsDetailsDesktop({Key? key}) : super(key: key);

  @override
  State<ProjectsDetailsDesktop> createState() => _ProjectsDetailsDesktopState();
}

class _ProjectsDetailsDesktopState extends State<ProjectsDetailsDesktop> {
  final _headerFont = TextStyle(
      fontSize: 40,
      color: Color.fromARGB(251, 79, 17, 94),
      fontWeight: FontWeight.w700);

  final _subHeaderFont = TextStyle(
      fontSize: 16, color: Colors.grey[800], fontWeight: FontWeight.w400);

  final _subHeaderFont2 = TextStyle(
      fontSize: 16, color: Colors.grey[800], fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        padding: width <= 1550
            ? EdgeInsets.fromLTRB(100, 60, 100, 100)
            : EdgeInsets.fromLTRB(250, 100, 250, 100),
        alignment: Alignment.center,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
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
                height: 60,
              ),
              ListView.separated(
                padding: EdgeInsets.all(0),
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    color: Colors.grey[300],
                    height: 200,
                  );
                },
                physics: ScrollPhysics(),
                shrinkWrap: true,
                itemCount: projectsList.length,
                itemBuilder: (context, index) {
                  ProjectsInfo projects = projectsList[index];
                  return Row(
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.blue,
                        child: Column(children: [Image.asset(projects.img)]),
                      )),
                      SizedBox(
                        width: 40,
                      ),
                      Expanded(
                          child: Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                            ]),
                      )),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
