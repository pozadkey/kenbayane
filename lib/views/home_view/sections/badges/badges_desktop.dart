// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:kenbayanerenewable/models/badges_info.dart';

class BadgesDesktop extends StatefulWidget {
  const BadgesDesktop({Key? key}) : super(key: key);

  @override
  State<BadgesDesktop> createState() => _BadgesDesktopState();
}

class _BadgesDesktopState extends State<BadgesDesktop> {
  final _headerFont = TextStyle(
      fontSize: 24,
      color: Color.fromARGB(255, 255, 215, 39),
      fontWeight: FontWeight.w600);

  final _headerNoteFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 18,
      color: Colors.grey[200],
      fontWeight: FontWeight.w500);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Color.fromARGB(251, 79, 17, 94),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: width <= 1550
                ? EdgeInsets.fromLTRB(100, 20, 100, 20)
                : EdgeInsets.fromLTRB(200, 20, 200, 20),
            width: 2000,
            child: GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: badgesList.length,
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: ScrollPhysics(),
                itemBuilder: (BuildContext ctx, index) {
                  BadgesInfo badges = badgesList[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        badges.count,
                        style: _headerFont,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        badges.title,
                        style: _headerNoteFont,
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}
