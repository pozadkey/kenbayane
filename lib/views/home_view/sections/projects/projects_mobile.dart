// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../widgets/buttons/secondary_button.dart';

class ProjectsMobile extends StatefulWidget {
  const ProjectsMobile({Key? key}) : super(key: key);

  @override
  State<ProjectsMobile> createState() => _ProjectsMobileState();
}

class _ProjectsMobileState extends State<ProjectsMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final _headerFont = TextStyle(
       fontSize: width >= 700 ? 40 : 30,
        color: Color.fromARGB(251, 79, 17, 94),
        fontWeight: FontWeight.w700);

    return Container(
      padding: width >= 700
          ? EdgeInsets.fromLTRB(110, 40, 110, 40)
          : EdgeInsets.fromLTRB(20, 40, 20, 40),
      color: Colors.white,
      child: Column(
        children: [
          Text(
            'Our Works',
            style: _headerFont,
          ),
          Divider(
            color: Color.fromARGB(251, 79, 17, 94),
            thickness: 1,
          ),
          SizedBox(
            height: 20,
          ),
          Image.asset(
            'assets/images/projects/project-1.jpeg',
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
              child: SecondaryButton(
                bgColor: Colors.white,
                titleColor: Color.fromARGB(251, 79, 17, 94),
                titleColorIn: Colors.white,
                titleColorOut: Color.fromARGB(251, 79, 17, 94),
                myColor: Color.fromARGB(251, 79, 17, 94),
                title: 'View featured projects',
                onPressed: () {
                  Navigator.pushNamed(context, '/projects');
                },
              ))
        ],
      ),
    );
  }
}
