// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../../../widgets/buttons/secondary_icon_button.dart';

class IntroDesktop extends StatefulWidget {
  const IntroDesktop({Key? key}) : super(key: key);

  @override
  State<IntroDesktop> createState() => _IntroDesktopState();
}

class _IntroDesktopState extends State<IntroDesktop> {
  final _headerFont =
      TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.w700);

  final _headerNoteFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 16,
      color: Colors.white,
      fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        padding: width <= 1550
            ? EdgeInsets.fromLTRB(100, 100, 100, 100)
            : EdgeInsets.fromLTRB(250, 100, 250, 100),
        color: Color.fromARGB(251, 79, 17, 94),
        height: 750,
        child: Row(
          children: [
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 500,
                  child: FittedBox(
                      child: Text(
                    'CLEAN.\nSAFE.\nRENEWABLE.',
                    style: _headerFont,
                  )),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 500,
                  child: FittedBox(
                      child: Text(
                    'Clean renewable energy sources bring us cleaner, healthier air and water,\nand they also make us less dependent on imported energy and advance\nour economy.',
                    style: _headerNoteFont,
                  )),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SecondaryIconButton(
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
                  ],
                )
              ],
            )),
            Expanded(
                child: Image.asset(
              'assets/images/intro/header_img.png',
              scale: 0.2,
            ))
          ],
        ));
  }
}
