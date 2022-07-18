// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../../widgets/buttons/home_button.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final _headerFont =
      TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.w700);

  final _headerNoteFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.fromLTRB(150, 100, 150, 100),
        color: Color.fromARGB(251, 79, 17, 94),
        height: 750,
        child: Row(
          children: [
            Expanded(
                child: Container(
                    child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 500,
                  child: FittedBox(
                      child: Text(
                    'CLEAN,\nSAFE,\nRENEWABLE.',
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
                SizedBox(
                  width: 200,
                  child: HomeButton(),
                )
              ],
            ))),
            Expanded(
                child: Container(
              color: Colors.yellow,
              child: Text('Hello'),
            ))
          ],
        ));
  }
}
