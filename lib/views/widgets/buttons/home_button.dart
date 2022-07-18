// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class HomeButton extends StatefulWidget {
  const HomeButton({Key? key}) : super(key: key);

  @override
  State<HomeButton> createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> {
  final _navButtonFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 16,
      color: Color.fromARGB(251, 79, 17, 94),
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Padding(
        padding: EdgeInsets.fromLTRB(35, 15, 35, 15),
        child: Text(
          'Contact Us',
          style: _navButtonFont,
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/contact');
      },
      style: TextButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 255, 200, 3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            0.0,
          ),
        ),
      ),
    );
  }
}
