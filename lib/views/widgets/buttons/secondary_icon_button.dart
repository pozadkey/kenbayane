// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, must_be_immutable

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SecondaryIconButton extends StatefulWidget {
  final String title;
  Color bgColor;
  Color bgColorOut;
  Color titleColor;
  Color titleColorIn;
  Color titleColorOut;
  Color myColor;
  final Function onPressed;
  SecondaryIconButton(
      {Key? key,
      required this.title,
      required this.bgColor,
      required this.bgColorOut,
      required this.titleColor,
      required this.titleColorIn,
      required this.titleColorOut,
      required this.myColor,
      required this.onPressed})
      : super(key: key);

  @override
  State<SecondaryIconButton> createState() => _SecondaryIconButtonState();
}

class _SecondaryIconButtonState extends State<SecondaryIconButton> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final _secondaryIconButtonFont = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 16,
        color: widget.titleColor,
        fontWeight: FontWeight.w600);

    return MouseRegion(
      onEnter: (m) {
        setState(() {
          widget.bgColor = widget.myColor;
          widget.titleColor = widget.titleColorIn;
        });
      },
      onExit: (m) {
        setState(() {
          widget.bgColor = widget.bgColorOut;
          widget.titleColor = widget.titleColorOut;
        });
      },
      child: TextButton(
        child: Padding(
          padding: width >= 800 ? EdgeInsets.all(20) : EdgeInsets.all(8),
          child: Row(
            children: [
              Text(
                widget.title,
                style: _secondaryIconButtonFont,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                FontAwesomeIcons.arrowRight,
                color: widget.titleColor,
              )
            ],
          ),
        ),
        onPressed: () {
          widget.onPressed();
        },
        style: TextButton.styleFrom(
          backgroundColor: widget.bgColor,
          side: BorderSide(color: widget.myColor, width: 2),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.0)),
        ),
      ),
    );
  }
}
