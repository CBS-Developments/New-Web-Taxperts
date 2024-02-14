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
      padding: EdgeInsets.all(9.3),
      color: Colors.white,
      child: Text(childText,
        style: TextStyle(fontSize: fontSize ,color: textColor),
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
      padding: EdgeInsets.all(5),

      width: 200,
      height: 40,
      child: TextField(
        controller: controller,
        maxLines: 1,
        textAlign: TextAlign.right,
        style: TextStyle(
          fontSize: 16,
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
          contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10),
            ),
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
      padding: EdgeInsets.all(5),
      color: Colors.white,
      child: Text(childText,
        style: TextStyle(fontSize: fontSize ,fontWeight: FontWeight.bold,color: textColor),
      ),
    );
  }
}


class RedioContainer extends StatelessWidget {
  final int groupValue;
  final int value;
  final String timeText;
  final ValueChanged<int?> onChanged; // Correctly accepts null values for onChanged callback.

  const RedioContainer({
    Key? key,
    required this.groupValue,
    required this.value,
    required this.onChanged,
    required this.timeText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 100, // Ensure secTextWidth is defined or provided.
      height: 40, // Ensure secTextHeight is defined or provided.
      child: Row(
        children: [
          Radio<int>(
            activeColor: Colors.green,
            value: value,
            groupValue: groupValue,
            onChanged: onChanged, // Directly pass the onChanged callback.
          ),
          
          Text(timeText)
        ],
      ),
    );
  }
}

class RedioContainerTab extends StatelessWidget {
  final int groupValue;
  final int value;
  final String timeText;
  final ValueChanged<int?> onChanged; // Correctly accepts null values for onChanged callback.

  const RedioContainerTab({
    Key? key,
    required this.groupValue,
    required this.value,
    required this.onChanged,
    required this.timeText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        color: Colors.white,
        width: 100, // Ensure secTextWidth is defined or provided.
        height: 40, // Ensure secTextHeight is defined or provided.
        child: Row(
          children: [
            Radio<int>(
              activeColor: Colors.green,
              value: value,
              groupValue: groupValue,
              onChanged: onChanged, // Directly pass the onChanged callback.
            ),

            Text(timeText, style: TextStyle(
              fontSize: 10
            ),)
          ],
        ),
      ),
    );
  }
}

Future<void> snackBar(BuildContext context, String message, Color color) async {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      message,
      style: TextStyle(color: color, fontSize: 17.0),
    ),
  ));
}

