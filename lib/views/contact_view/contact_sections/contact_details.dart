// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({Key? key}) : super(key: key);

  @override
  State<ContactDetails> createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  final _headerFont = TextStyle(
      fontSize: 40,
      color: Color.fromARGB(251, 79, 17, 94),
      fontWeight: FontWeight.w700);

  final _ctaButtonFont = TextStyle(
      fontSize: 16,
      color: Color.fromARGB(251, 79, 17, 94),
      fontWeight: FontWeight.w700);

  final _subHeaderFont = TextStyle(
      fontSize: 16, color: Colors.grey[800], fontWeight: FontWeight.w500);

  final _subHeaderFont2 = TextStyle(
      fontSize: 16, color: Colors.grey[800], fontWeight: FontWeight.w700);

  final _miniFont = TextStyle(
      fontSize: 16, color: Colors.grey[800], fontWeight: FontWeight.w500);

  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _message = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool isTransfer = true;
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(250, 0, 250, 0),
        alignment: Alignment.center,
        color: Color.fromARGB(255, 255, 255, 255),
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
                      SizedBox(
                        height: 60,
                      ),
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
                                  width: 2.0,
                                  style: BorderStyle.solid,
                                )),
                            height: 50,
                            width: double.infinity,
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.all(12.0),
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
                                          size: 20, color: Colors.grey[700]),
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
                        controller: _firstName,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'First name cannot be empty';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text('First name'),
                            hintText: 'Enter First name'),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _lastName,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Last name cannot be empty';
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            label: Text('Last name'),
                            hintText: 'Enter Last name'),
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
                            border: OutlineInputBorder(),
                            label: Text('Email'),
                            hintText: 'Enter email'),
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
                              isDense: true,
                              border: OutlineInputBorder(),
                              label: Text('Message'),
                              hintText: 'Enter message'),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Text(
                              'Send',
                              style: _ctaButtonFont,
                            ),
                          ),
                          onPressed: () async {
                            _formKey.currentState!.validate();
                            if (_firstName.text.isNotEmpty &&
                                _lastName.text.isNotEmpty &&
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
                          style: TextButton.styleFrom(
                            side: BorderSide(
                              color: Color.fromARGB(251, 79, 17, 94),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(2.0)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
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
              color: Color.fromARGB(255, 251, 249, 253),
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Icon(
                        FontAwesomeIcons.envelope,
                        color: Color.fromARGB(251, 79, 17, 94),
                      ),
                    ),
                    Text(
                      'info@kenbayanerenewable.com',
                      style: _subHeaderFont,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                      child: Icon(
                        FontAwesomeIcons.building,
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
    );
  }
}
