// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:kenbayanerenewable/models/testimonials_info.dart';

class TestimonialsDetailsMobile extends StatefulWidget {
  const TestimonialsDetailsMobile({Key? key}) : super(key: key);

  @override
  State<TestimonialsDetailsMobile> createState() =>
      _TestimonialsDetailsMobileState();
}

class _TestimonialsDetailsMobileState extends State<TestimonialsDetailsMobile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final _servicesHeaderFont = TextStyle(
        fontSize: width >= 700 ? 40 : 30,
        color: Color.fromARGB(251, 79, 17, 94),
        fontWeight: FontWeight.w700);

    final _servicesSubFont = TextStyle(
        fontStyle: FontStyle.normal,
        fontSize: width >= 700 ? 20 : 16,
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
            'Our Testimonials',
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
              'See what our customers are saying about us:',
              textAlign: TextAlign.center,
              style: _servicesNoteFont,
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
            itemCount: testimoniallist.length,
            itemBuilder: (context, index) {
              TestimonialsInfo testimonials = testimoniallist[index];
              return Center(
                child: Container(
                  color: Color.fromARGB(255, 246, 241, 251),
                  padding: width >= 700
                      ? EdgeInsets.fromLTRB(50, 50, 50, 50)
                      : EdgeInsets.all(30),
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
              );
            },
          ),
        ],
      ),
    );
  }
}
