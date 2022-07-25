// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:kenbayanerenewable/models/badges_info.dart';

class BadgesMobile extends StatefulWidget {
  const BadgesMobile({Key? key}) : super(key: key);

  @override
  State<BadgesMobile> createState() => _BadgesMobileState();
}

class _BadgesMobileState extends State<BadgesMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final _headerFont = TextStyle(
        fontSize: width >= 700 ? 24 : 18,
        color: Color.fromARGB(255, 255, 215, 39),
        fontWeight: FontWeight.w700);

    final _headerNoteFont = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: width >= 700 ? 18 : 16,
        color: Colors.grey[200],
        fontWeight: FontWeight.w500);

    return Container(
      color: Color.fromARGB(251, 79, 17, 94),
      padding: width >= 700
          ? EdgeInsets.fromLTRB(110, 40, 110, 40)
          : EdgeInsets.fromLTRB(20, 0, 20, 0),
      child: Container(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
                childAspectRatio: width >= 200 && width <= 400 ? 4 / 2 : 6 / 2,
                crossAxisCount: width <= 800 ? 1 : 3),
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
                    height: width <= 800 ? 5 : null,
                  ),
                  Text(
                    badges.title,
                    style: _headerNoteFont,
                    textAlign: TextAlign.center,
                  )
                ],
              );
            }),
      ),
    );
  }
}
