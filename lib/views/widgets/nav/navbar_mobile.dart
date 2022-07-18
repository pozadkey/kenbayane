// ignore_for_file: prefer_const_constructors
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import '../buttons/home_button.dart';
import 'navbar_button.dart';
import 'navbar_logo.dart';

IconData myMenu = Icons.menu_rounded;
double collapsableHeight = 0.0;

class NavBarMobile extends StatefulWidget {
  const NavBarMobile({Key? key}) : super(key: key);

  @override
  State<NavBarMobile> createState() => _NavBarMobileState();
}

class _NavBarMobileState extends State<NavBarMobile> {
  final _navFont = TextStyle(
      fontStyle: FontStyle.normal,
      fontSize: 14,
      letterSpacing: 0.41,
      color: Colors.grey[350],
      fontWeight: FontWeight.w600);

  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          color: Color.fromARGB(255, 5, 3, 12),
          alignment: Alignment.center,
          padding: width <= 420
              ? EdgeInsets.fromLTRB(10, 15, 10, 15)
              : EdgeInsets.fromLTRB(30, 15, 30, 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavLogo(myColor:  Color.fromARGB(255, 197, 19, 147),),
              NavBarButton(onPressed: () {
                if (_isVisible == false) {
                  setState(() {
                    _isVisible = true;
                    myMenu = FontAwesomeIcons.xmark;
                  });
                } else if (_isVisible == true) {
                  setState(() {
                    _isVisible = false;
                    myMenu = FontAwesomeIcons.bars;
                  });
                }
              })
            ],
          ),
        ),
        Visibility(
            visible: _isVisible,
            child: AnimatedContainer(
              padding: width <= 420
                  ? EdgeInsets.only(bottom: 20.0)
                  : EdgeInsets.zero,
              duration: Duration(milliseconds: 375),
              curve: Curves.easeInOut,
              width: double.infinity,
              child: Column(
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _isVisible = false;
                        myMenu = FontAwesomeIcons.bars;
                      });
                      Navigator.pushNamed(context, '/');
                    },
                    child: Text(
                      'Home',
                      style: _navFont,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _isVisible = false;
                        myMenu = FontAwesomeIcons.bars;
                      });
                      Navigator.pushNamed(context, '/projects');
                    },
                    child: Text(
                      'Projects',
                      style: _navFont,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        _isVisible = false;
                        myMenu = FontAwesomeIcons.bars;
                      });
                      Navigator.pushNamed(context, '/resume');
                    },
                    child: Text(
                      'Résumé',
                      style: _navFont,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(width: 150, child: FittedBox(child: HomeButton()))
                ],
              ),
            ))
      ],
    );
  }
}
