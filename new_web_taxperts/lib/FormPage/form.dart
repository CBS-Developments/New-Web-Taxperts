import 'package:flutter/material.dart';
import 'package:new_web_taxperts/FormPage/form_mobile.dart';
import 'package:new_web_taxperts/FormPage/form_tablet.dart';
import 'package:new_web_taxperts/responsive.dart';

import 'form_desktop.dart';

class FormPage extends StatefulWidget {
  const FormPage({super.key});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: FormMobile(),
        tablet: FormTablet(),
        desktop: FormDesktop());
  }
}
