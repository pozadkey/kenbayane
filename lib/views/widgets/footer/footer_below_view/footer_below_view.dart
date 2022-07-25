// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FooterBelowView extends StatefulWidget {
  const FooterBelowView({Key? key}) : super(key: key);

  @override
  State<FooterBelowView> createState() => _FooterBelowViewState();
}

class _FooterBelowViewState extends State<FooterBelowView> {
  final _footerFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 12,
      color: Colors.grey[200],
      fontWeight: FontWeight.w400);

  DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    String formattedDate = DateFormat('y').format(now);

    return Center(
      child: Container(
        padding: width <= 1000
            ? EdgeInsets.fromLTRB(20, 20, 20, 20)
            : EdgeInsets.fromLTRB(100, 20, 100, 20),
        color: Color.fromARGB(251, 79, 17, 94),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Copyright © Kenbayane Renewable - $formattedDate.',
                  style: _footerFont,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
