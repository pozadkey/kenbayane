// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:kenbayanerenewable/models/services_info.dart';

class ServicesDetailsDesktop extends StatefulWidget {
  const ServicesDetailsDesktop({Key? key}) : super(key: key);

  @override
  State<ServicesDetailsDesktop> createState() => _ServicesDetailsDesktopState();
}

class _ServicesDetailsDesktopState extends State<ServicesDetailsDesktop> {
  final _servicesHeaderFont = TextStyle(
      fontSize: 40,
      color: Color.fromARGB(251, 79, 17, 94),
      fontWeight: FontWeight.w700);

  final _servicesSubFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 24,
      color: Color.fromARGB(251, 79, 17, 94),
      fontWeight: FontWeight.w600);

  final _servicesNoteFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
      color: Colors.grey[800],
      fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: width <= 1550
                ? EdgeInsets.fromLTRB(100, 60, 100, 60)
                : EdgeInsets.fromLTRB(200, 100, 200, 100),
            width: 1500,
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
                  height: 30,
                ),
                SizedBox(
                  width: 900,
                  child: Text(
                    'At Kenbayane, our team has the courage, scale, passion, diversity and resourcefulness needed to deliver that promise...\nwherever and however the world needs it. Together with our customers, we’re proving that no one is ever limited to only\naffordable, reliable, or sustainable energy.',
                    style: _servicesNoteFont,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemCount: servicesList.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (BuildContext ctx, index) {
                        ServicesInfo services = servicesList[index];
                        return Center(
                          child: Container(
                            padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 246, 241, 251),
                              borderRadius: BorderRadius.circular(
                                15.0,
                              ),
                            ),
                            child: Column(
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
                      }),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
