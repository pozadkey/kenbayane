// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FooterViewMobile extends StatefulWidget {
  const FooterViewMobile({Key? key}) : super(key: key);

  @override
  State<FooterViewMobile> createState() => _FooterViewMobileState();
}

class _FooterViewMobileState extends State<FooterViewMobile> {
  final _footerHeaderFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 18,
      color: Colors.white,
      letterSpacing: 0.41,
      fontWeight: FontWeight.w700);

  final _footerFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 16,
      color: Colors.white,
      letterSpacing: 0.41,
      fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 100, 20, 100),
      color: Color.fromARGB(241, 3, 26, 199),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Access Us',
                style: _footerHeaderFont,
              ),
              SizedBox(
                width: 100,
                child: Divider(
                  color: Colors.white,
                  thickness: 3,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                padding: EdgeInsets.zero,
                minWidth: 0,
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                child: Text(
                  'Home',
                  style: _footerFont,
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.zero,
                minWidth: 0,
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Text(
                  'About',
                  style: _footerFont,
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.zero,
                minWidth: 0,
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  'Online banking',
                  style: _footerFont,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Services',
                style: _footerHeaderFont,
              ),
              SizedBox(
                width: 100,
                child: Divider(
                  color: Colors.white,
                  thickness: 3,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                padding: EdgeInsets.zero,
                minWidth: 0,
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  'Bill Payment',
                  style: _footerFont,
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.zero,
                minWidth: 0,
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  'Send Money',
                  style: _footerFont,
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.zero,
                minWidth: 0,
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  'Receive money',
                  style: _footerFont,
                ),
              ),
            ],
          )),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Stay In Touch',
                style: _footerHeaderFont,
              ),
              SizedBox(
                width: 100,
                child: Divider(
                  color: Colors.white,
                  thickness: 3,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              MaterialButton(
                padding: EdgeInsets.zero,
                minWidth: 0,
                onPressed: () {
                  Navigator.pushNamed(context, '/contact');
                },
                child: Text(
                  'Contact Us',
                  style: _footerFont,
                ),
              ),
              MaterialButton(
                padding: EdgeInsets.zero,
                minWidth: 0,
                onPressed: () {},
                child: Text(
                  'info@tapcapitals.com',
                  style: _footerFont,
                ),
              ),
                SizedBox(
                height: 5,
              ),
              MaterialButton(
                padding: EdgeInsets.zero,
                minWidth: 0,
                onPressed: () {},
                child: Text(
                 '19 Warrah Str, Hamilton East\nNewcastle, NSW Australia',
                  style: _footerFont,
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
