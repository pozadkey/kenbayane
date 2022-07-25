// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:kenbayanerenewable/views/about_view/about_view.dart';
import 'package:kenbayanerenewable/views/contact_view/contact_view.dart';
import 'package:kenbayanerenewable/views/projects_view/projects_view.dart';
import 'package:kenbayanerenewable/views/services_view/services_view.dart';

import 'views/home_view/home_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setPathUrlStrategy();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
        ),
        title: 'Kenbayane Renewable ',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => HomeView(),
          '/services': (BuildContext context) => ServicesView(),
          '/projects': (BuildContext context) => ProjectsView(),
          '/contact': (BuildContext context) => ContactView(),
          '/about': (BuildContext context) => AboutView(),
        });
  }
}
