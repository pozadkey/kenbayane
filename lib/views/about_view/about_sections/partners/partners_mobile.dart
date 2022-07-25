// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../../../models/partners_info.dart';

class PartnersMobile extends StatefulWidget {
  const PartnersMobile({Key? key}) : super(key: key);

  @override
  State<PartnersMobile> createState() => _PartnersMobileState();
}

class _PartnersMobileState extends State<PartnersMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      color: Color.fromARGB(251, 79, 17, 94),
      padding: width >= 700
          ? EdgeInsets.fromLTRB(110, 20, 110, 20)
          : EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Container(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: width >= 700 ? 5 : 1,
              childAspectRatio: width >= 200 && width <= 400 ? 4 / 2 : 6 / 2,
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
                    size: width >= 700 ? 45 : 40,
                  )
                ],
              );
            }),
      ),
    );
  }
}
