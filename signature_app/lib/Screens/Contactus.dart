import 'package:flutter/material.dart';
import 'Drawer.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: navigationMenufunction(context),
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Contact Us',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: const Color(0xFFFF6607),
          shadowColor: Colors.black,
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Container(
                  child: const Image(
                image: AssetImage("assets/Logo.png"),
              )),
              const Divider(
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const <Widget>[
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    "Signature Pad",
                    style: TextStyle(
                        color: Color(0xFFFF6607),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Divider(
                color: Colors.black,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () async {},
                        child: Container(
                            height: 40.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              shadowColor: Colors.greenAccent,
                              color: const Color(0xFFFF6607),
                              elevation: 7.0,
                              child: const Center(
                                child: Text(
                                  'Send an Email',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () async {},
                        child: Container(
                            height: 40.0,
                            child: Material(
                              borderRadius: BorderRadius.circular(20.0),
                              shadowColor: const Color(0xFFFF6607),
                              color: const Color(0xFFFF6607),
                              elevation: 7.0,
                              child: const Center(
                                child: Text(
                                  'Contact Developer',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                            )),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ]
                ),
              ),
            ]),
          ),
        ));
  }
}
