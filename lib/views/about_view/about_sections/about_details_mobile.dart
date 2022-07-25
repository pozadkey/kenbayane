// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutDetailsMobile extends StatefulWidget {
  const AboutDetailsMobile({Key? key}) : super(key: key);

  @override
  State<AboutDetailsMobile> createState() => _AboutDetailsMobileState();
}

class _AboutDetailsMobileState extends State<AboutDetailsMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final _headerFont = TextStyle(
        fontSize: width >= 700 ? 40 : 30,
        color: Color.fromARGB(251, 79, 17, 94),
        fontWeight: FontWeight.w700);

    final _subHeaderFont = TextStyle(
        fontSize: 16, color: Colors.grey[800], fontWeight: FontWeight.w400);

    final _subHeaderFont2 = TextStyle(
        fontSize: 16, color: Colors.grey[800], fontWeight: FontWeight.w600);

    return Container(
      padding: width >= 700
          ? EdgeInsets.fromLTRB(110, 40, 110, 40)
          : EdgeInsets.fromLTRB(20, 40, 20, 40),
      color: Color.fromARGB(255, 255, 255, 255),
      child: Column(
        children: [
          Text(
            'About Us',
            style: _headerFont,
          ),
          Divider(
            color: Color.fromARGB(251, 79, 17, 94),
            thickness: 1,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'We’re proud of our reputation as one of the finest “one-call, one-stop” manufacturers of brand identity and electronic user interface products.',
            style: _subHeaderFont2,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'All Kenbayane Renewable energy facilities are certified to operate under the guidance of various international standards for quality management systems based on their respective customer requirements and products. All our facilities operate under lean manufacturing and continuous improvement principles to increase efficiencies and reduce costs while maintaining the highest level of quality. Lean methods include improving workplace organization, reducing set-up times, streamlining process flows, continuous employee training, and more. Kenbayane Renewable Energy is a major player in the renewable energy market dedicated towards renewable technologies, specifically in six of them — solar, wind, hydro, biomass, geothermal and tidal. Working in close partnership with strategic clients helps us to offer the most effective solutions towards energy independence. Founded by Kenneth Bayane - a forward thinking, flexible and reliable professional and member of the Sustainable Engineering Society (SENG) and Electric Energy Society of Australia (EESA). Born in Brussels, Belgium, He graduated with a degree in Energy Transition - Sustainability and Leadership at Uppsala University, Sweden.',
            style: _subHeaderFont,
          ),
          SizedBox(
            height: 50,
          ),
          Icon(
            FontAwesomeIcons.fan,
            color: Color.fromARGB(255, 255, 215, 39),
            size: 200,
          ),
        ],
      ),
    );
  }
}
