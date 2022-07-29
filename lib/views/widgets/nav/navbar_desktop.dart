// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kenbayanerenewable/views/widgets/nav/navbar_items.dart';
import '../buttons/primary_button.dart';
import 'navbar_logo.dart';

class NavBarDesktop extends StatefulWidget {
  const NavBarDesktop({Key? key}) : super(key: key);

  @override
  State<NavBarDesktop> createState() => _NavBarDesktopState();
}

class _NavBarDesktopState extends State<NavBarDesktop> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Color.fromARGB(251, 79, 17, 94),
      padding: width <= 1550
          ? EdgeInsets.fromLTRB(100, 15, 100, 15)
          : EdgeInsets.fromLTRB(150, 15, 150, 15),
      margin: EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavLogo(
            myColor: Color.fromARGB(255, 255, 215, 39),
            logoTextSize: 20,
            iconsSize: 20,
          ),
          Row(children: [
            NavBarItems(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                title: 'Home',
                initialColor: Colors.white,
                hoverColorIn: Color.fromARGB(255, 255, 215, 39),
                hoverColorOut: Colors.white),
            NavBarItems(
                onPressed: () {
                  Navigator.pushNamed(context, '/services');
                },
                title: 'Services',
                initialColor: Colors.white,
                hoverColorIn: Color.fromARGB(255, 255, 215, 39),
                hoverColorOut: Colors.white),
            NavBarItems(
                onPressed: () {
                  Navigator.pushNamed(context, '/projects');
                },
                title: 'Projects',
                initialColor: Colors.white,
                hoverColorIn: Color.fromARGB(255, 255, 215, 39),
                hoverColorOut: Colors.white),
            NavBarItems(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                title: 'About',
                initialColor: Colors.white,
                hoverColorIn: Color.fromARGB(255, 255, 215, 39),
                hoverColorOut: Colors.white),
          ]),
          Row(
            children: [
              PrimaryButton(
                title: 'Contact Us',
                myColor: Color.fromARGB(255, 255, 215, 39),
                colorOut: Color.fromARGB(255, 255, 215, 39),
                colorIn: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, '/contact');
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
