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
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: width <= 1550
                ? EdgeInsets.fromLTRB(50, 15, 50, 15)
                : EdgeInsets.fromLTRB(250, 15, 250, 15),
            width: 2000,
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
                      initalTextColor: Color.fromARGB(251, 79, 17, 94),
                      initialBgColor: Color.fromARGB(255, 255, 215, 39),
                      hoverInColor: Colors.white,
                      hoverInBgColor: Colors.black,
                      hoverOutColor: Color.fromARGB(251, 79, 17, 94),
                      hoverOutBgColor: Color.fromARGB(255, 255, 215, 39),
                      onPressed: () {
                        Navigator.pushNamed(context, '/contact');
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
