// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FooterBelowDesktop extends StatefulWidget {
  const FooterBelowDesktop({Key? key}) : super(key: key);

  @override
  State<FooterBelowDesktop> createState() => _FooterBelowDesktopState();
}

class _FooterBelowDesktopState extends State<FooterBelowDesktop> {
  final _footerFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 12,
      color: Colors.white,
      fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
        color: Color.fromARGB(251, 79, 17, 94),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Copyright © Kenbayane Renewable - 2022',
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
