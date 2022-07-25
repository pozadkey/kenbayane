// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:kenbayanerenewable/models/partners_info.dart';

class PartnersDesktop extends StatefulWidget {
  const PartnersDesktop({Key? key}) : super(key: key);

  @override
  State<PartnersDesktop> createState() => _PartnersDesktopState();
}

class _PartnersDesktopState extends State<PartnersDesktop> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: Color.fromARGB(251, 79, 17, 94),
      padding: width <= 1550
          ? EdgeInsets.fromLTRB(100, 20, 100, 20)
          : EdgeInsets.fromLTRB(250, 20, 250, 20),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: partnersList.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemBuilder: (BuildContext ctx, index) {
            PartnersInfo partners = partnersList[index];
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  partners.icon,
                  color: Color.fromARGB(255, 255, 215, 39),
                  size: 80,
                ),
              ],
            );
          }),
    );
  }
}
