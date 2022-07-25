// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../models/services_info.dart';

class ServicesDetailsMobile extends StatefulWidget {
  const ServicesDetailsMobile({Key? key}) : super(key: key);

  @override
  State<ServicesDetailsMobile> createState() => _ServicesDetailsMobileState();
}

class _ServicesDetailsMobileState extends State<ServicesDetailsMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final _servicesHeaderFont = TextStyle(
        fontSize: width >= 700 ? 40 : 30,
        color: Color.fromARGB(251, 79, 17, 94),
        fontWeight: FontWeight.w700);

    final _servicesSubFont = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: width >= 700 ? 24 : 18,
        color: Color.fromARGB(251, 79, 17, 94),
        fontWeight: FontWeight.w600);

    final _servicesNoteFont = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: 14,
        color: Colors.grey[800],
        fontWeight: FontWeight.w400);

    return Container(
      padding: width >= 700
          ? EdgeInsets.fromLTRB(110, 40, 110, 40)
          : EdgeInsets.fromLTRB(20, 40, 20, 40),
      color: Colors.white,
      child: Column(
        children: [
          Text(
            'What we do',
            style: _servicesHeaderFont,
          ),
          Divider(
            color: Color.fromARGB(251, 79, 17, 94),
            thickness: 1,
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: width >= 700 ? width = 700 : 800,
            child: Text(
              'At Kenbayane, our team has the courage, scale, passion, diversity and resourcefulness needed to deliver that promise...wherever and however the world needs it. Together with our customers, we’re proving that no one is ever limited to only affordable, reliable, or sustainable energy.',
              style: _servicesNoteFont,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return Divider(
                color: Colors.white,
                height: 40,
              );
            },
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemCount: servicesList.length,
            itemBuilder: (context, index) {
              ServicesInfo services = servicesList[index];
              return Center(
                child: Container(
                  color: Color.fromARGB(255, 246, 241, 251),
                  padding: width >= 700
                      ? EdgeInsets.fromLTRB(50, 50, 50, 50)
                      : EdgeInsets.all(30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      services.icon,
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        services.title,
                        style: _servicesSubFont,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Colors.grey[300],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        services.info,
                        style: _servicesNoteFont,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
