// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kenbayanerenewable/views/widgets/nav/navbar_logo.dart';

class FooterViewDesktop extends StatefulWidget {
  const FooterViewDesktop({Key? key}) : super(key: key);

  @override
  State<FooterViewDesktop> createState() => _FooterViewDesktopState();
}

class _FooterViewDesktopState extends State<FooterViewDesktop> {
  final _footerHeaderFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 18,
      color: Color.fromARGB(255, 255, 200, 3),
      fontWeight: FontWeight.w600);

  final _footerFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 12,
      color: Colors.grey[200],
      fontWeight: FontWeight.w400);

  final TextEditingController _email = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(100, 100, 100, 100),
        color: Color.fromARGB(253, 66, 0, 83),
        height: 500,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 400,
                  child: FittedBox(
                    child: NavLogo(
                      myColor: Color.fromARGB(255, 255, 200, 3),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'We harness the earth’s most abundant resources – the strength of the wind, the heat of the sun and the force of water – to power the world’s biggest economies and the most remote communities. Combining onshore and offshore wind, blades, hydro, storage, utility-scale solar, and grid solutions as well as hybrid renewables and digital services offerings, Kenbayane Renewable Energy has installed more than 400+ gigawatts of clean renewable energy and equipped more than 90 percent of utilities worldwide with its grid solutions.',
                  style: _footerFont,
                )
              ],
            )),
            SizedBox(
              width: 100,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Access Us',
                  style: _footerHeaderFont,
                ),
                SizedBox(
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
                    Navigator.pushNamed(context, '/services');
                  },
                  child: Text(
                    'Services',
                    style: _footerFont,
                  ),
                ),
                MaterialButton(
                  padding: EdgeInsets.zero,
                  minWidth: 0,
                  onPressed: () {
                    Navigator.pushNamed(context, '/projects');
                  },
                  child: Text(
                    'Projects',
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
                    Navigator.pushNamed(context, '/contact');
                  },
                  child: Text(
                    'Contact',
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
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.envelope,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'info@kenbayanerenewable.com',
                        style: _footerFont,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  padding: EdgeInsets.zero,
                  minWidth: 0,
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.building,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '8 Jardine Street, Stafford,\nQueensland, 4053 Australia',
                        style: _footerFont,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  padding: EdgeInsets.zero,
                  minWidth: 0,
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.phone,
                        color: Colors.white,
                        size: 18,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '+32 (46) 024-2834\n+61 (48) 889-3724',
                        style: _footerFont,
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
