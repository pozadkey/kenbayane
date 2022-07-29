// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../../widgets/buttons/secondary_icon_button.dart';

class IntroMobile extends StatefulWidget {
  const IntroMobile({Key? key}) : super(key: key);

  @override
  State<IntroMobile> createState() => _IntroMobileState();
}

class _IntroMobileState extends State<IntroMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final _headerFont = TextStyle(
        fontSize: width >= 700 ? 30 : 20,
        color: Colors.white,
        fontWeight: FontWeight.w700);

    final _headerNoteFont = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w400);

    return Container(
      width: double.infinity,
      padding: width >= 700
          ? EdgeInsets.fromLTRB(110, 40, 110, 40)
          : EdgeInsets.fromLTRB(20, 40, 20, 40),
      color: Color.fromARGB(251, 79, 17, 94),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: width >= 700 ? 500 : 300,
            child: FittedBox(
                child: Text(
              'CLEAN.\nSAFE.\nRENEWABLE.',
              textAlign: TextAlign.center,
              style: _headerFont,
            )),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 500,
            child: Text(
              'Clean renewable energy sources bring us cleaner, healthier air and water, and they also make us less dependent on imported energy and advance our economy.',
              textAlign: TextAlign.center,
              style: _headerNoteFont,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Image.asset(
            'assets/images/intro/header_img.png',
            scale: width >= 700 ? 1 : 0.1,
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: width <= 420 ? double.infinity : 300,
            child: SecondaryIconButton(
              title: 'View projects',
              bgColor: Colors.transparent,
              bgColorOut: Colors.transparent,
              titleColor: Color.fromARGB(255, 255, 215, 39),
              titleColorIn: Color.fromARGB(251, 79, 17, 94),
              titleColorOut: Color.fromARGB(255, 255, 215, 39),
              myColor: Color.fromARGB(255, 255, 215, 39),
              onPressed: () {
                Navigator.pushNamed(context, '/projects');
              },
            ),
          )
        ],
      ),
    );
  }
}
