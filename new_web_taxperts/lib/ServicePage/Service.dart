import 'package:flutter/material.dart';
import 'package:new_web_taxperts/ServicePage/service_desktop.dart';
import 'package:new_web_taxperts/ServicePage/service_mobile.dart';
import 'package:new_web_taxperts/ServicePage/service_tablet.dart';
import 'package:new_web_taxperts/responsive.dart';

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: ServiceMobile(), tablet: ServiceTablet(), desktop: ServiceDesktop());
  }
}
