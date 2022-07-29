// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  final String title;
  Color myColor;
  Color colorIn;
  Color colorOut;
  final Function onPressed;
  PrimaryButton(
      {Key? key,
      required this.title,
      required this.myColor,
      required this.colorIn,
      required this.colorOut,
      required this.onPressed})
      : super(key: key);

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  final _priimaryButtonFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 16,
      color: Color.fromARGB(251, 79, 17, 94),
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return MouseRegion(
      onEnter: (m) {
        setState(() {
          widget.myColor = widget.colorIn;
        });
      },
      onExit: (m) {
        setState(() {
          widget.myColor = widget.colorOut;
        });
      },
      child: TextButton(
        child: Padding(
          padding: width >= 800 ? EdgeInsets.all(15) : EdgeInsets.all(8),
          child: Text(
            widget.title,
            style: _priimaryButtonFont,
          ),
        ),
        onPressed: () {
          setState(() {
            widget.myColor = widget.colorIn;
          });
          widget.onPressed();
        },
        style: TextButton.styleFrom(
          backgroundColor: widget.myColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              0.0,
            ),
          ),
        ),
      ),
    );
  }
}
