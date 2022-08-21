// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kenbayanerenewable/views/widgets/buttons/secondary_button.dart';

class ProjectsDesktop extends StatefulWidget {
  const ProjectsDesktop({Key? key}) : super(key: key);

  @override
  State<ProjectsDesktop> createState() => _ProjectsDesktopState();
}

class _ProjectsDesktopState extends State<ProjectsDesktop> {
  final _headerFont = TextStyle(
      fontSize: 40,
      color: Color.fromARGB(251, 79, 17, 94),
      fontWeight: FontWeight.w700);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            Container(
              padding: width <= 1550
                  ? EdgeInsets.fromLTRB(100, 100, 100, 100)
                  : EdgeInsets.fromLTRB(250, 100, 250, 100),
              width: 2000,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                          height: 30,
                        ),
                        Image.asset(
                          'assets/images/projects/project-1.jpeg',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Expanded(
                      child: Container(
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
                          )))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
