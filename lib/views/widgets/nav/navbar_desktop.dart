// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../buttons/home_button.dart';
import 'navbar_logo.dart';

class NavBarDesktop extends StatefulWidget {
  const NavBarDesktop({Key? key}) : super(key: key);

  @override
  State<NavBarDesktop> createState() => _NavBarDesktopState();
}

class _NavBarDesktopState extends State<NavBarDesktop> {
  final _navFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
      letterSpacing: 0.41,
      color: Colors.white,
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(251, 79, 17, 94),
      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
      margin: EdgeInsets.all(0),
      // height: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavLogo(
            myColor: Color.fromARGB(255, 255, 200, 3),
          ),
          Row(children: [
            MaterialButton(
              hoverColor: Color.fromARGB(255, 255, 200, 3),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text(
                'Home',
                style: _navFont,
              ),
            ),
            MaterialButton(
              hoverColor: Color.fromARGB(255, 255, 200, 3),
              onPressed: () {
                Navigator.pushNamed(context, '/services');
              },
              child: Text(
                'Services',
                style: _navFont,
              ),
            ),
            MaterialButton(
              hoverColor: Color.fromARGB(255, 255, 200, 3),
              onPressed: () {
                Navigator.pushNamed(context, '/projects');
              },
              child: Text(
                'Projects',
                style: _navFont,
              ),
            ),
            MaterialButton(
              hoverColor: Color.fromARGB(255, 255, 200, 3),
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              child: Text(
                'About',
                style: _navFont,
              ),
            ),
          ]),
          Row(
            children: [HomeButton()],
          )
        ],
      ),
    );
  }
}
