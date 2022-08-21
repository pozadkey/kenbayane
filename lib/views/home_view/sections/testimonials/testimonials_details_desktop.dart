// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:kenbayanerenewable/models/testimonials_info.dart';

class TestimonialsDetailsDesktop extends StatefulWidget {
  const TestimonialsDetailsDesktop({Key? key}) : super(key: key);

  @override
  State<TestimonialsDetailsDesktop> createState() =>
      _TestimonialsDetailsDesktopState();
}

class _TestimonialsDetailsDesktopState
    extends State<TestimonialsDetailsDesktop> {
  final _servicesHeaderFont = TextStyle(
      fontSize: 40,
      color: Color.fromARGB(251, 79, 17, 94),
      fontWeight: FontWeight.w700);

  final _servicesSubFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 16,
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
                ? EdgeInsets.fromLTRB(100, 100, 100, 100)
                : EdgeInsets.fromLTRB(250, 100, 250, 100),
            width: 1500,
            child: Column(
              children: [
                Text(
                  'Our Testimonials',
                  style: _servicesHeaderFont,
                ),
                Divider(
                  color: Color.fromARGB(251, 79, 17, 94),
                  thickness: 1,
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 350,
                  child: FittedBox(
                    child: Text(
                      'See what our customers are saying about us:',
                      style: _servicesNoteFont,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                      ),
                      itemCount: testimoniallist.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (BuildContext ctx, index) {
                        TestimonialsInfo testimonials = testimoniallist[index];
                        return Container(
                          child: Center(
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 246, 241, 251),
                                borderRadius: BorderRadius.circular(
                                  15.0,
                                ),
                              ),
                              padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    testimonials.info,
                                    style: _servicesNoteFont,
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
                                    testimonials.author,
                                    style: _servicesSubFont,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
