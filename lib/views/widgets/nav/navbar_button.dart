// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../nav/navbar.dart';
import '../nav/navbar_mobile.dart';

class NavBarButton extends StatefulWidget {
  final Function onPressed;
  const NavBarButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  _NavBarButtonState createState() => _NavBarButtonState();
}

class _NavBarButtonState extends State<NavBarButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 55.0,
        width: 60.0,
        child: InkWell(
          splashColor: Colors.white60,
          onTap: () {
            widget.onPressed();
          },
          child: Icon(
            myMenu,
            color: Colors.white,
            size: 30,
          ),
        ));
  }
}
