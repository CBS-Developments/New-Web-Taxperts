import 'package:flutter/material.dart';
import 'package:new_web_taxperts/ContactPage/contact_desktop.dart';
import 'package:new_web_taxperts/ContactPage/contact_mobile.dart';
import 'package:new_web_taxperts/ContactPage/contact_tablet.dart';

import '../responsive.dart';


class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: ContactMobile(),
      tablet: ContactTablet(),
      desktop: ContactDesktop(),
    );
  }
}

