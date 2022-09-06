import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Contactus.dart';

Widget navigationMenufunction(BuildContext context) {
  var navigationMenu = Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          child: Container(
            color: Color(0xFFFF6607),
            alignment: Alignment.center,
            child: Image.asset('assets/Logo.png'),
          ),
        ),
        ListTile(
          leading: const Icon(
            FontAwesomeIcons.mobileAlt,
            color: Color(0xFFFF6607),
          ),
          title: const Text(
            'Contact Us',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ContactUs(),
              ),
            );
          },
        ),
        const Divider(
          color: Colors.black,
        ),
        ListTile(
          leading: const Icon(
            FontAwesomeIcons.signOutAlt,
            color: Color(0xFFFF6607),
          ),
          title: const Text(
            'Exit',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            SystemNavigator.pop();
          },
        ),
        const Divider(
          color: Colors.black,
        ),
      ],
    ),
  );
  return navigationMenu;
}
