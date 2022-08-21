// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutDetailsDesktop extends StatefulWidget {
  const AboutDetailsDesktop({Key? key}) : super(key: key);

  @override
  State<AboutDetailsDesktop> createState() => _AboutDetailsDesktopState();
}

class _AboutDetailsDesktopState extends State<AboutDetailsDesktop> {
  final _headerFont = TextStyle(
      fontSize: 40,
      color: Color.fromARGB(251, 79, 17, 94),
      fontWeight: FontWeight.w700);

  final _subHeaderFont = TextStyle(
      fontSize: 16, color: Colors.grey[800], fontWeight: FontWeight.w400);

  final _subHeaderFont2 = TextStyle(
      fontSize: 16, color: Colors.grey[800], fontWeight: FontWeight.w600);

  bool isTransfer = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        width: double.infinity,
        alignment: Alignment.center,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          children: [
            Container(
              padding: width <= 1550
                  ? EdgeInsets.fromLTRB(100, 60, 100, 60)
                  : EdgeInsets.fromLTRB(250, 100, 250, 100),
              width: 2000,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.fan,
                            color: Color.fromARGB(255, 255, 215, 39),
                            size: 350,
                          )
                        ]),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
