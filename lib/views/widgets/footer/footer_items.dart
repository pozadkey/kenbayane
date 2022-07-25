// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, sized_box_for_whitespace, must_be_immutable

import 'package:flutter/material.dart';

class FooterItems extends StatefulWidget {
  String title;
  Color initialColor;
  Color hoverColorIn;
  Color hoverColorOut;
  final Function onPressed;
  
  FooterItems({
    Key? key,
    required this.title,
    required this.initialColor,
    required this.hoverColorIn,
    required this.hoverColorOut,
    required this.onPressed,
  }) : super(key: key);

  @override
  _FooterItemsState createState() => _FooterItemsState();
}

class _FooterItemsState extends State<FooterItems> {
  @override
  Widget build(BuildContext context) {
    final _footerFont = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 12,
        color: widget.initialColor,
        fontWeight: FontWeight.w400);

    return MouseRegion(
        onEnter: (m) {
          setState(() {
            widget.initialColor = widget.hoverColorIn;
          });
        },
        onExit: (m) {
          setState(() {
            widget.initialColor = widget.hoverColorOut;
          });
        },
        child: MaterialButton(
          padding: EdgeInsets.zero,
          minWidth: 0,
          onPressed: () {
            widget.onPressed();
          },
          child: Text(
            widget.title,
            style: _footerFont,
          ),
        ));
  }
}
