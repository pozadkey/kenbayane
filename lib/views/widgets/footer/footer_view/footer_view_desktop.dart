// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kenbayanerenewable/views/widgets/footer/footer_icon_items.dart';
import 'package:kenbayanerenewable/views/widgets/footer/footer_items.dart';
import 'package:kenbayanerenewable/views/widgets/nav/navbar_logo.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterViewDesktop extends StatefulWidget {
  const FooterViewDesktop({Key? key}) : super(key: key);

  @override
  State<FooterViewDesktop> createState() => _FooterViewDesktopState();
}

class _FooterViewDesktopState extends State<FooterViewDesktop> {
  final _footerHeaderFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 18,
      color: Color.fromARGB(255, 255, 215, 39),
      fontWeight: FontWeight.w600);

  final _footerFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 12,
      color: Colors.grey[200],
      fontWeight: FontWeight.w400);

  void _launchEmail() async {
    final url = Uri.parse('mailto:info@kenbayanerenewable.com?subject=Hello');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(100, 100, 100, 100),
        color: Color.fromARGB(251, 66, 0, 83),
        height: 500,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 400,
                  child: FittedBox(
                    child: NavLogo(
                      myColor: Color.fromARGB(255, 255, 215, 39),
                      logoTextSize: 20,
                      iconsSize: 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'We harness the earth’s most abundant resources – the strength of   the wind, the heat of the sun and the force of water – to power the world’s biggest economies and the most remote communities. Combining onshore and offshore wind, blades, hydro, storage, utility-scale solar, and grid solutions as well as hybrid renewables and digital services offerings, Kenbayane Renewable Energy has installed more than 400+ gigawatts of clean renewable energy and equipped more than 90 percent of utilities worldwide with its grid solutions.',
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
                    thickness: 2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FooterItems(
                    onPressed: () {
                      Navigator.pushNamed(context, '/');
                    },
                    title: 'Home',
                    initialColor: Color.fromARGB(255, 248, 248, 248),
                    hoverColorIn: Color.fromARGB(255, 255, 215, 39),
                    hoverColorOut: Color.fromARGB(255, 248, 248, 248)),
                FooterItems(
                    onPressed: () {
                      Navigator.pushNamed(context, '/services');
                    },
                    title: 'Services',
                    initialColor: Color.fromARGB(255, 248, 248, 248),
                    hoverColorIn: Color.fromARGB(255, 255, 215, 39),
                    hoverColorOut: Color.fromARGB(255, 248, 248, 248)),
                FooterItems(
                    onPressed: () {
                      Navigator.pushNamed(context, '/projects');
                    },
                    title: 'Projects',
                    initialColor: Color.fromARGB(255, 248, 248, 248),
                    hoverColorIn: Color.fromARGB(255, 255, 215, 39),
                    hoverColorOut: Color.fromARGB(255, 248, 248, 248)),
                FooterItems(
                    onPressed: () {
                      Navigator.pushNamed(context, '/about');
                    },
                    title: 'About',
                    initialColor: Color.fromARGB(255, 248, 248, 248),
                    hoverColorIn: Color.fromARGB(255, 255, 215, 39),
                    hoverColorOut: Color.fromARGB(255, 248, 248, 248)),
                FooterItems(
                    onPressed: () {
                      Navigator.pushNamed(context, '/contact');
                    },
                    title: 'Contact',
                    initialColor: Color.fromARGB(255, 248, 248, 248),
                    hoverColorIn: Color.fromARGB(255, 255, 215, 39),
                    hoverColorOut: Color.fromARGB(255, 248, 248, 248)),
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
                    thickness: 2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                FooterIconItems(
                    title: 'info@kenbayanerenewable.com',
                    footerIcon: FontAwesomeIcons.solidEnvelope,
                    initialColor: Color.fromARGB(255, 248, 248, 248),
                    hoverColorIn: Color.fromARGB(255, 255, 215, 39),
                    hoverColorOut: Color.fromARGB(255, 248, 248, 248),
                    onPressed: _launchEmail),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      FontAwesomeIcons.solidBuilding,
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
                SizedBox(
                  height: 10,
                ),
                Row(
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
              ],
            )),
          ],
        ),
      ),
    );
  }
}
