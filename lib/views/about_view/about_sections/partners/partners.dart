// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Partners extends StatefulWidget {
  const Partners({Key? key}) : super(key: key);

  @override
  State<Partners> createState() => _PartnersState();
}

class _PartnersState extends State<Partners> {
  final _headerFont = TextStyle(
      fontSize: 24,
      color: Color.fromARGB(251, 79, 17, 94),
      fontWeight: FontWeight.w700);

  final _headerNoteFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 18,
      color: Colors.white,
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(150, 20, 150, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/partners/pngwing-1.png',
                  scale: 3,
                  color: Color.fromARGB(251, 79, 17, 94),
                ),
              ],
            ),
          )),
          Expanded(
              child: Container(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/partners/pngwing-2.png',
                  scale: 12,
                  color: Color.fromARGB(251, 79, 17, 94),
                ),
              ],
            ),
          )),
          Expanded(
              child: Container(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/partners/pngwing-3.png',
                  scale: 15,
                  color: Color.fromARGB(251, 79, 17, 94),
                ),
              ],
            ),
          )),
          Expanded(
              child: Container(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/partners/pngwing-5.png',
                  scale: 4,
                  color: Color.fromARGB(251, 79, 17, 94),
                ),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
