// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../nav/navbar_logo.dart';
import '../footer_icon_items.dart';
import '../footer_items.dart';

class FooterViewMobile extends StatefulWidget {
  const FooterViewMobile({Key? key}) : super(key: key);

  @override
  State<FooterViewMobile> createState() => _FooterViewMobileState();
}

class _FooterViewMobileState extends State<FooterViewMobile> {
  final _footerHeaderFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 16,
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
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: width <= 420
          ? EdgeInsets.fromLTRB(10, 30, 10, 30)
          : EdgeInsets.fromLTRB(20, 30, 20, 30),
      color: Color.fromARGB(253, 66, 0, 83),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            child: NavLogo(
              myColor: Color.fromARGB(255, 255, 215, 39),
              logoTextSize: width <= 340 ? 15 : 18,
              iconsSize: width <= 340 ? 15 : 18,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'We harness the earth’s most abundant resources – the strength of the wind, the heat of the sun and the force of water – to power the world’s biggest economies and the most remote communities. Combining onshore and offshore wind, blades, hydro, storage, utility-scale solar, and grid solutions as well as hybrid renewables and digital services offerings, Kenbayane Renewable Energy has installed more than 400+ gigawatts of clean renewable energy and equipped more than 90 percent of utilities worldwide with its grid solutions.',
            style: _footerFont,
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
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
                  FittedBox(
                    child: FooterIconItems(
                        title: 'info@kenbayanerenewable.com',
                        footerIcon: FontAwesomeIcons.solidEnvelope,
                        initialColor: Color.fromARGB(255, 248, 248, 248),
                        hoverColorIn: Color.fromARGB(255, 255, 215, 39),
                        hoverColorOut: Color.fromARGB(255, 248, 248, 248),
                        onPressed: _launchEmail),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FittedBox(
                    child: Row(
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
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FittedBox(
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
              ))
            ],
          ),
        ],
      ),
    );
  }
}
