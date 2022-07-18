// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Badges extends StatefulWidget {
  const Badges({Key? key}) : super(key: key);

  @override
  State<Badges> createState() => _BadgesState();
}

class _BadgesState extends State<Badges> {
  final _headerFont = TextStyle(
      fontSize: 24,
      color: Color.fromARGB(255, 255, 200, 3),
      fontWeight: FontWeight.w600);

  final _headerNoteFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 18,
      color: Colors.grey[200],
      fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(251, 79, 17, 94),
      padding: EdgeInsets.fromLTRB(150, 50, 150, 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: Container(
            child: Column(
              children: [
                Text(
                  '3842',
                  style: _headerFont,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'FINISHED PROJECTS',
                  style: _headerNoteFont,
                )
              ],
            ),
          )),
          Expanded(
              child: Container(
            child: Column(
              children: [
                Text(
                  '765',
                  style: _headerFont,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'HAPPY CLIENTS',
                  style: _headerNoteFont,
                )
              ],
            ),
          )),
          Expanded(
              child: Container(
            child: Column(
              children: [
                Text(
                  '2858',
                  style: _headerFont,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'WORKING HOURS',
                  style: _headerNoteFont,
                )
              ],
            ),
          )),
          Expanded(
              child: Container(
            child: Column(
              children: [
                Text(
                  '8767',
                  style: _headerFont,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'SATISFIED EMPLOYEES',
                  style: _headerNoteFont,
                )
              ],
            ),
          )),
          Expanded(
              child: Container(
            child: Column(
              children: [
                Text(
                  '530',
                  style: _headerFont,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'OFFICES WORLDWIDE',
                  style: _headerNoteFont,
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
