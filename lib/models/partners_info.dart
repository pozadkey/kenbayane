import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PartnersInfo {
  IconData icon;

  PartnersInfo({
    required this.icon,
  });
}

List<PartnersInfo> partnersList = [
  PartnersInfo(icon: FontAwesomeIcons.superpowers),
  PartnersInfo(icon: FontAwesomeIcons.towerObservation),
  PartnersInfo(icon: FontAwesomeIcons.towerCell),
  PartnersInfo(icon: FontAwesomeIcons.sun),
  PartnersInfo(icon: FontAwesomeIcons.circleRadiation),
];
