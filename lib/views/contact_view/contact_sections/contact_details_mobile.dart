// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kenbayanerenewable/views/widgets/buttons/primary_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/buttons/secondary_button.dart';
import '../../widgets/links/links.dart';

class ContactDetailsMobile extends StatefulWidget {
  const ContactDetailsMobile({Key? key}) : super(key: key);

  @override
  State<ContactDetailsMobile> createState() => _ContactDetailsMobileState();
}

class _ContactDetailsMobileState extends State<ContactDetailsMobile> {
  bool _isVisible = false;
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _message = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final _headerFont = TextStyle(
        fontSize: width >= 700 ? 40 : 30,
        color: Color.fromARGB(251, 79, 17, 94),
        fontWeight: FontWeight.w700);

    final _subHeaderFont = TextStyle(
        fontSize: 14, color: Colors.grey[800], fontWeight: FontWeight.w400);

    final _subHeaderFont2 = TextStyle(
        fontSize: 14, color: Colors.grey[800], fontWeight: FontWeight.w600);

    final _miniFont = TextStyle(
        fontSize: 12, color: Colors.green[500], fontWeight: FontWeight.w500);

    final _labelFont = TextStyle(
        fontSize: 12, color: Colors.grey[400], fontWeight: FontWeight.w600);

    void _launchEmail() async {
      final url = Uri.parse('mailto:info@kenbayanerenewable.com?subject=Hello');
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Container(
      padding: width >= 700
          ? EdgeInsets.fromLTRB(110, 40, 110, 40)
          : EdgeInsets.fromLTRB(20, 40, 20, 40),
      child: Column(
        children: [
          SizedBox(
            width: 600,
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Contact Us',
                    style: _headerFont,
                  ),
                  Divider(
                    color: Color.fromARGB(251, 79, 17, 94),
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Have questions about renewable energy?',
                    style: _subHeaderFont2,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Visibility(
                    visible: _isVisible,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.green[100],
                            border: Border.all(
                              color: Colors.green,
                              style: BorderStyle.solid,
                            )),
                        height: 50,
                        width: double.infinity,
                        child: Center(
                          child: FittedBox(
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Your message was sent. Check your email for a reply.',
                                    style: _miniFont,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  MaterialButton(
                                    padding: EdgeInsets.zero,
                                    minWidth: 0,
                                    onPressed: () {
                                      setState(() {
                                        _isVisible = false;
                                      });
                                    },
                                    child: Icon(
                                      Icons.cancel_outlined,
                                      size: 25,
                                      color: Color.fromARGB(251, 79, 17, 94),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    'We can help. Simply fill out the form, providing as much information as you can and we’ll get back to you as soon as possible',
                    style: _subHeaderFont,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    style: _subHeaderFont,
                    controller: _name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'First name cannot be empty';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      label: Text('Name'),
                      labelStyle: _labelFont,
                      hintText: 'Enter name',
                      hintStyle: _subHeaderFont,
                      fillColor: Colors.grey[100],
                      filled: true,
                      prefixIcon: Icon(
                        FontAwesomeIcons.solidUser,
                        color: Color.fromARGB(251, 79, 17, 94),
                      ),
                      contentPadding: width >= 800
                          ? EdgeInsets.fromLTRB(10, 14, 0, 14)
                          : EdgeInsets.fromLTRB(10, 11, 0, 11),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(251, 79, 17, 94),
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: _email,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email cannot be empty';
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      label: Text('Email'),
                      labelStyle: _labelFont,
                      hintText: 'Enter email',
                      hintStyle: _subHeaderFont,
                      fillColor: Colors.grey[100],
                      filled: true,
                      prefixIcon: Icon(
                        FontAwesomeIcons.solidEnvelope,
                        color: Color.fromARGB(251, 79, 17, 94),
                      ),
                      contentPadding: width >= 800
                          ? EdgeInsets.fromLTRB(10, 14, 0, 14)
                          : EdgeInsets.fromLTRB(10, 11, 0, 11),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromARGB(251, 79, 17, 94),
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 5 * 24.0,
                    child: TextFormField(
                      maxLines: 5,
                      controller: _message,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Message cannot be empty';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        alignLabelWithHint: true,
                        isDense: true,
                        label: Text('Message'),
                        labelStyle: _labelFont,
                        hintText: 'Enter messsage',
                        hintStyle: _subHeaderFont,
                        fillColor: Colors.grey[100],
                        filled: true,
                        prefixIconConstraints: BoxConstraints(
                          minWidth: 40,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(251, 79, 17, 94),
                          ),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: PrimaryButton(
                      title: 'Send',
                      initalTextColor: Colors.white,
                      initialBgColor: Color.fromARGB(251, 79, 17, 94),
                      hoverInColor: Colors.white,
                      hoverInBgColor: Colors.black,
                      hoverOutColor: Colors.white,
                      hoverOutBgColor: Color.fromARGB(251, 79, 17, 94),
                      onPressed: () async {
                        _formKey.currentState!.validate();
                        if (_name.text.isNotEmpty &&
                            _email.text.isNotEmpty &&
                            _message.text.isNotEmpty) {
                          setState(() {
                            _isVisible = true;
                          });
                        } else {
                          setState(() {
                            _isVisible = false;
                          });
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: double.infinity,
                    color: Color.fromARGB(255, 246, 241, 251),
                    padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Icon(
                            FontAwesomeIcons.solidEnvelope,
                            color: Color.fromARGB(251, 79, 17, 94),
                          ),
                        ),
                        Links(
                            title: 'info@kenbayanerenewable.com',
                            initialColor: Color.fromARGB(255, 66, 66, 66),
                            hoverColorIn: Color.fromARGB(255, 255, 215, 39),
                            hoverColorOut: Color.fromARGB(255, 66, 66, 66),
                            onPressed: _launchEmail),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Icon(
                            FontAwesomeIcons.solidBuilding,
                            color: Color.fromARGB(251, 79, 17, 94),
                          ),
                        ),
                        Text(
                          '8 Jardine Street, Stafford,\nQueensland, 4053 Australia',
                          style: _subHeaderFont,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Icon(
                            FontAwesomeIcons.phone,
                            color: Color.fromARGB(251, 79, 17, 94),
                          ),
                        ),
                        Text(
                          '+32 (46) 024-2834\n+61 (48) 889-3724',
                          style: _subHeaderFont,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
