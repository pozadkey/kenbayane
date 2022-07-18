// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FooterBelowMobile extends StatefulWidget {
  const FooterBelowMobile({Key? key}) : super(key: key);

  @override
  State<FooterBelowMobile> createState() => _FooterBelowMobileState();
}

class _FooterBelowMobileState extends State<FooterBelowMobile> {
  final _footerFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 12,
      color: Colors.white,
      letterSpacing: 0.41,
      fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 40, 20, 40),
        color: Color.fromARGB(240, 4, 18, 129),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  padding: EdgeInsets.zero,
                  minWidth: 0,
                  onPressed: () {},
                  child: Text(
                    'Term and Conditions',
                    style: _footerFont,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                MaterialButton(
                  padding: EdgeInsets.zero,
                  minWidth: 0,
                  onPressed: () {},
                  child: Text(
                    'Privacy & Policy',
                    style: _footerFont,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                MaterialButton(
                  padding: EdgeInsets.zero,
                  minWidth: 0,
                  onPressed: () {},
                  child: Text(
                    'Legal',
                    style: _footerFont,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                MaterialButton(
                  padding: EdgeInsets.zero,
                  minWidth: 0,
                  onPressed: () {},
                  child: Text(
                    'Notice',
                    style: _footerFont,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Copyright © Tapcapitals - 2022',
                  style: _footerFont,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
