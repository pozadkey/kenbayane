// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kenbayanerenewable/views/widgets/buttons/primary_button.dart';
import 'package:kenbayanerenewable/views/widgets/buttons/secondary_button.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets/links/links.dart';

class ContactDetailsDesktop extends StatefulWidget {
  const ContactDetailsDesktop({Key? key}) : super(key: key);

  @override
  State<ContactDetailsDesktop> createState() => _ContactDetailsDesktopState();
}

class _ContactDetailsDesktopState extends State<ContactDetailsDesktop> {
  final _headerFont = TextStyle(
      fontSize: 40,
      color: Color.fromARGB(251, 79, 17, 94),
      fontWeight: FontWeight.w700);

  final _subHeaderFont = TextStyle(
      fontSize: 16, color: Colors.grey[800], fontWeight: FontWeight.w400);

  final _subHeaderFont2 = TextStyle(
      fontSize: 16, color: Colors.grey[800], fontWeight: FontWeight.w600);

  final _miniFont = TextStyle(
      fontSize: 12, color: Colors.green[500], fontWeight: FontWeight.w500);

  final _labelFont = TextStyle(
      fontSize: 12, color: Colors.grey[400], fontWeight: FontWeight.w600);

  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _message = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool _isVisible = false;

  void _launchEmail() async {
    final url = Uri.parse('mailto:info@kenbayanerenewable.com?subject=Hello');
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Container(
              padding: width <= 1550
                  ? EdgeInsets.fromLTRB(100, 60, 100, 60)
                  : EdgeInsets.fromLTRB(200, 100, 200, 100),
              width: 1800,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                                          MaterialButton(
                                            padding: EdgeInsets.zero,
                                            minWidth: 0,
                                            onPressed: () {
                                              setState(() {
                                                _isVisible = !_isVisible;
                                              });
                                            },
                                            child: Icon(Icons.cancel_outlined,
                                                size: 20,
                                                color: Colors.grey[700]),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'We can help. Simply fill out the form, providing as much information as you can and we’ll get back to you as soon as possible',
                              style: _subHeaderFont,
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
                                  borderRadius: BorderRadius.circular(
                                    8.0,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(251, 79, 17, 94),
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    8.0,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    8.0,
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
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    8.0,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color.fromARGB(251, 79, 17, 94),
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    8.0,
                                  ),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.red,
                                  ),
                                  borderRadius: BorderRadius.circular(
                                    8.0,
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
                                  contentPadding: width >= 800
                                      ? EdgeInsets.fromLTRB(10, 14, 0, 14)
                                      : EdgeInsets.fromLTRB(10, 11, 0, 11),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      8.0,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(251, 79, 17, 94),
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      8.0,
                                    ),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.red,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                      8.0,
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
                                hoverOutBgColor:
                                    Color.fromARGB(251, 79, 17, 94),
                                onPressed: () {
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
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Expanded(
                      child: Container(
                    padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 246, 241, 251),
                      borderRadius: BorderRadius.circular(
                        15.0,
                      ),
                    ),
                    child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                        ]),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
