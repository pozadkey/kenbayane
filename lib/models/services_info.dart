// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServicesInfo {
  Icon icon;
  String title;
  String info;

  ServicesInfo({
    required this.icon,
    required this.title,
    required this.info,
  });
}

List<ServicesInfo> servicesList = [
  ServicesInfo(
      icon: Icon(
        FontAwesomeIcons.radiation,
        color: Color.fromARGB(251, 79, 17, 94),
        size: 50,
      ),
      title: 'WIND TURBINE',
      info:
          'As wind turbine providers, we offer flexible and customized onshore wind operations and maintenance support to fit your specific wind farm asset management needs. We offer tiered levels of onshore wind turbine services, from remote monitoring and full plant maintenance to a wide range of performance-enhancing upgrades to keep your turbines running smoothly.  Whether you\'re looking for support with unplanned maintenance or are interested in upgrading your farm or fleet with our digital applications, we can provide customized onshore wind turbine services. '),
  ServicesInfo(
      icon: Icon(
        FontAwesomeIcons.water,
        color: Color.fromARGB(251, 79, 17, 94),
        size: 50,
      ),
      title: 'HYDRO POWER',
      info:
          'Hydro power plant operators not only need to maintain plant availability and efficiency, but will likely want to increase plant performance over the course of its lifetime. To ensure plant operators, owners and investors can achieve and maintain optimum performance, Kenbayane\'s PlantLife program, a comprehensive asset management program, offers both customized and off-the-shelf solutions.'),
  ServicesInfo(
      icon: Icon(
        FontAwesomeIcons.solarPanel,
        color: Color.fromARGB(251, 79, 17, 94),
        size: 50,
      ),
      title: 'GRID SOLUTIONS',
      info:
          'Grid Solutions is dedicated to the success of its customers and provides an array of comprehensive services to help successfully deploy and maintain equipment and business solutions globally. World-class support, consulting and training resources are ready to help maximize the performance and reliability of assets throughout their lifecycle. '),
  ServicesInfo(
      icon: Icon(
        FontAwesomeIcons.atom,
        color: Color.fromARGB(251, 79, 17, 94),
        size: 50,
      ),
      title: 'MANAGEMENT SYSTEMS',
      info:
          'We can help with development, training and implementation of a whole or part of an environmental management system. We undertake help with internal audits, training, risk assessment and legal registers and provide consultancy support through the cycle of planning, implementation, internal auditing and reviewing common to all management systems. With a good track record of helping companies scope and implement their environmental management system in accordance to the standard and can also help you through the external certification process. ISO 14001 can also be implemented as part of a broader sustainability consulting programme.'),
];
