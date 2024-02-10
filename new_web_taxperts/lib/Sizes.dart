// ignore: duplicate_ignore
// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';


double getPageWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getPageHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

double SmSizeBoxHeight(BuildContext context){
  return (MediaQuery.of(context).size.height)*0.002;
}

double GContainerWidth(BuildContext context){
  return (MediaQuery.of(context).size.width)*0.23;
}

double getFontLarge(BuildContext context) {
  return (getPageWidth(context) * 0.0038) * (getPageHeight(context) * 0.0038);
}

double getFontMe(BuildContext context) {
  return (getPageWidth(context) * 0.0036) * (getPageHeight(context) * 0.0036);
}

double getFontNormal(BuildContext context) {
  return (getPageWidth(context) * 0.0033) * (getPageHeight(context) * 0.0033);
}

double buttonHeight(BuildContext context) {
  return (getPageHeight(context) * 0.05) ;
}

double buttonWidth(BuildContext context) {
  return (getPageWidth(context) * 0.08) ;
}

double buttonFont(BuildContext context) {
  return (getPageWidth(context) * 0.0038) * (getPageHeight(context) * 0.0038);
}

double MeSizeBoxHeight(BuildContext context){
  return (MediaQuery.of(context).size.height)*0.01;
}

double LaSizeBoxHeight(BuildContext context){
  return (MediaQuery.of(context).size.height)*0.02;
}

double ImageHeight(BuildContext context) {
  return (getPageHeight(context) * 0.3) ;
}

double ImageWidth(BuildContext context) {
  return (getPageWidth(context) * 0.1) ;
}

double TextContHeight(BuildContext context) {
  return (getPageHeight(context) * 0.045) ;
}

double TextContWidth(BuildContext context) {
  return (getPageWidth(context) * 0.23) ;
}

double TextContMargin(BuildContext context) {
  return (getPageWidth(context) * 0.003) ;
}

double BlankHeight(BuildContext context) {
  return (getPageHeight(context) * 0.045) ;
}

double textContHeight(BuildContext context) {
  return (getPageHeight(context) * 0.05) ;
}

double textFContWidth(BuildContext context) {
  return (getPageWidth(context) * 0.18);
}

double TextFContMargin(BuildContext context) {
  return (getPageWidth(context) * 0.002) ;
}

double buttonContWidth(BuildContext context) {
  return (getPageWidth(context) * 0.12) ;
}

double secTextHeight(BuildContext context) {
  return (getPageHeight(context) * 0.045) ;
}

double secTextWidth(BuildContext context) {
  return (getPageWidth(context) * 0.12) ;
}

