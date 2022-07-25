// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'contact_details_desktop.dart';
import 'contact_details_mobile.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({Key? key}) : super(key: key);

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (width < 1243) {
        return ContactDetailsMobile();
      } else {
        return ContactDetailsDesktop();
      }
    });
  }
}
