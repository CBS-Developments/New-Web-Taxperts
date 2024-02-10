import 'package:flutter/material.dart';
import 'package:pattern_formatter/numeric_formatter.dart';
import 'sizes.dart';

class TextContainer extends StatelessWidget {
  final String childText;
  final double fontSize;
  final Color textColor;

  const TextContainer({

    Key? key,  required this.childText,  required this.fontSize,  required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(TextContMargin(context)),
      color: Colors.white,
      width: TextContWidth(context),
      height: TextContHeight(context),
      child: Text(childText,
        style: TextStyle(fontSize: fontSize ,fontWeight: FontWeight.bold,color: textColor),
      ),
    );
  }
}


class TexfeildContainer extends StatelessWidget {
  final controller;
  final String hintText;

  const TexfeildContainer({
    Key? key,
    this.controller,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(TextFContMargin(context)),
      color: Colors.white,
      width: textFContWidth(context),
      height: TextContHeight(context),
      child: TextField(
        controller: controller,
        textAlignVertical: TextAlignVertical.bottom,
        textAlign: TextAlign.right,
        maxLines: 1,
        style: TextStyle(
          fontSize: getFontMe(context),
        ),
        keyboardType:
        const TextInputType.numberWithOptions(decimal: true, signed: false),
        inputFormatters: [
          ThousandsFormatter(allowFraction: true),
        ],
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green),
            ),
            fillColor: Colors.white,
            filled: true,
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey[500],
              fontSize: getFontMe(context),
            )),
      ),
    );
  }
}



class BlankContainer extends StatelessWidget {
  const BlankContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(TextContMargin(context)),
      color: Colors.white,
      width: textFContWidth(context),
      height: BlankHeight(context),
    );
  }
}



class SecTextFeildContainer extends StatelessWidget {
  final String childText;
  final double fontSize;
  final Color textColor;

  const SecTextFeildContainer({Key? key,  required this.childText,  required this.fontSize,  required this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(TextContMargin(context)),
      color: Colors.white,
      width: secTextWidth(context),
      height: secTextHeight(context),
      child: Align(
        alignment: Alignment.center,
        child: Text(childText,
          style: TextStyle(fontSize: fontSize ,fontWeight: FontWeight.bold,color: textColor),
        ),
      ),
    );
  }
}


class RedioContainer extends StatelessWidget {
  final int groupValue;
  final int value;
  final ValueChanged<int?> onChanged; // Correctly accepts null values for onChanged callback.

  const RedioContainer({
    Key? key,
    required this.groupValue,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: secTextWidth(context), // Ensure secTextWidth is defined or provided.
      height: secTextHeight(context), // Ensure secTextHeight is defined or provided.
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Radio<int>(
          activeColor: Colors.green,
          value: value,
          groupValue: groupValue,
          onChanged: onChanged, // Directly pass the onChanged callback.
        ),
      ),
    );
  }
}


