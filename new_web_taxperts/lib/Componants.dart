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
class ServiceCard extends StatelessWidget {
  final String title;
  final String description;
  final String assetImagePath; // Use this for local asset image path

  const ServiceCard({
    Key? key,
    required this.title,
    required this.description,
    required this.assetImagePath, // Pass the asset image path here
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Container(
        width: 250,
        height: 300,
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              assetImagePath,
              width: 70.0, // Set your desired image width
              height: 70.0, // and height
              fit: BoxFit.cover, // This is to maintain the aspect ratio of the image
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.green
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle Learn More tap
                  },
                  child: Text('Learn More >>',style: TextStyle(color: Colors.green),),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
