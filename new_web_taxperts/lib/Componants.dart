import 'package:flutter/material.dart';
class AwardDescription extends StatefulWidget {
  final String title;
  final String description;

  const AwardDescription({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  @override
  _AwardDescriptionState createState() => _AwardDescriptionState();
}

class _AwardDescriptionState extends State<AwardDescription> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      trailing: SizedBox(),
      title: Text(
        widget.title,
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: isExpanded ? Colors.green : Colors.black, // Title color changes to green when expanded
        ),
      ),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70.0,vertical: 5),
          child: Text(widget.description,style: TextStyle(fontSize: 18),),
        ),
      ],
      leading: Icon(
        isExpanded ? Icons.remove : Icons.add,
        color: isExpanded ? Colors.green : Colors.black,// Changes icon based on whether the tile is expanded or not
      ),
      onExpansionChanged: (bool expanded) {
        setState(() {
          isExpanded = expanded; // Update the isExpanded state to keep track of the ExpansionTile's state
        });
      },
    );
  }
}
