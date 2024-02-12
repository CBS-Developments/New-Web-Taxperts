import 'package:flutter/material.dart';
import 'package:new_web_taxperts/colors.dart';
import 'package:url_launcher/url_launcher.dart';
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
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: isExpanded ? AppColor.headingDarkGreen : Colors.black, // Title color changes to green when expanded
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
        color: isExpanded ? AppColor.headingDarkGreen : Colors.black,// Changes icon based on whether the tile is expanded or not
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
                    Navigator.of(context).pushNamed('/services');
                    // Handle Learn More tap
                  },
                  child: Text('Learn More >>',style: TextStyle(color: AppColor.darkTextGreen),),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}


class WFooter extends StatelessWidget {
  const WFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.black,
      padding: EdgeInsets.all(20), // Padding around the footer content
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Address Column
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/LogoWh.png', // Replace with your asset path
                      height: 80, // Adjust the size as necessary
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('No. 101, Olcott Mawatha Colombo', style: TextStyle(color: Colors.white,fontSize: 16)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.email_rounded,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('connect@taxperts.lk', style: TextStyle(color: Colors.white,fontSize: 16)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone_in_talk_rounded,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('+94 777 148 839', style: TextStyle(color: Colors.white,fontSize: 16)),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(9),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Image.asset('images/fbIcon.png'),
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Image.asset('images/twIcon.png'),
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Image.asset('images/inIcon.png'),
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Image.asset('images/ytIcon.png'),
                          ),
                        ],
                      ),
                    ),
                    // Add social media icons here
                  ],
                ),
              ),
              // Company Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Company', style: TextStyle(color: Colors.white,fontSize: 24, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(onPressed: () {  },
                    child: Text('Home', style: TextStyle(color: Colors.white,fontSize: 18))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(onPressed: () {  },
                    child: Text('Tax Calculator', style: TextStyle(color: Colors.white,fontSize: 18))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(onPressed: () {  },
                        child: Text('Services', style: TextStyle(color: Colors.white,fontSize: 18))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(onPressed: () {  },
                        child: Text('Resources', style: TextStyle(color: Colors.white,fontSize: 18))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(onPressed: () {  },
                        child: Text('Blog', style: TextStyle(color: Colors.white,fontSize: 18))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextButton(onPressed: () {  },
                        child: Text('Contact', style: TextStyle(color: Colors.white,fontSize: 18))),
                  ),


                  // ... add the rest of the company links
                ],
              ),
              // Opening Hours Column
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('Opening Hours', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 24)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('Mon - Tue: 8.30 - 17.30', style: TextStyle(color: Colors.white,fontSize: 18)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('Wed – Thur: 8.30 - 17.30', style: TextStyle(color: Colors.white,fontSize: 18)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('Fri – Sat: 8.30 - 17.30', style: TextStyle(color: Colors.white,fontSize: 18)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('Saturday: 9.00 - 01.00', style: TextStyle(color: Colors.white,fontSize: 18)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text('Sunday: Closed', style: TextStyle(color: Colors.white,fontSize: 18)),
                    ),

                    // ... add the rest of the opening hours
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 60),


          Divider(color: Colors.green),
          SizedBox(height: 10),// The green line
          Text('© Copyright Taxperts 2024. All Rights Reserved', style: TextStyle(color: Colors.white)),

        ],
      ),
    );

  }
}



class WFooterTab extends StatelessWidget {
  const WFooterTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(20), // Padding around the footer content
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Address Column
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/LogoWh.png', // Replace with your asset path
                      height: 70, // Adjust the size as necessary
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('No. 101, Olcott Mawatha Colombo', style: TextStyle(color: Colors.white,fontSize: 12)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.email_rounded,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('connect@taxperts.lk', style: TextStyle(color: Colors.white,fontSize: 12)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone_in_talk_rounded,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('+94 777 148 839', style: TextStyle(color: Colors.white,fontSize: 12)),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(9),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Image.asset('images/fbIcon.png'),
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Image.asset('images/twIcon.png'),
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Image.asset('images/inIcon.png'),
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Image.asset('images/ytIcon.png'),
                          ),
                        ],
                      ),
                    ),
                    // Add social media icons here
                  ],
                ),
              ),
              // Company Column
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Company', style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: TextButton(onPressed: () {  },
                        child: Text('Home', style: TextStyle(color: Colors.white,fontSize: 14))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: TextButton(onPressed: () {  },
                        child: Text('Tax Calculator', style: TextStyle(color: Colors.white,fontSize: 14))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: TextButton(onPressed: () {  },
                        child: Text('Services', style: TextStyle(color: Colors.white,fontSize: 14))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: TextButton(onPressed: () {  },
                        child: Text('Resources', style: TextStyle(color: Colors.white,fontSize: 14))),
                  ),
                  TextButton(onPressed: () {  },
                      child: Text('Blog', style: TextStyle(color: Colors.white,fontSize: 14))),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: TextButton(onPressed: () {  },
                        child: Text('Contact', style: TextStyle(color: Colors.white,fontSize: 14))),
                  ),


                  // ... add the rest of the company links
                ],
              ),
              // Opening Hours Column
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Opening Hours', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Mon - Tue: 8.30 - 17.30', style: TextStyle(color: Colors.white,fontSize: 14)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Wed – Thur: 8.30 - 17.30', style: TextStyle(color: Colors.white,fontSize: 14)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Fri – Sat: 8.30 - 17.30', style: TextStyle(color: Colors.white,fontSize: 14)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Saturday: 9.00 - 01.00', style: TextStyle(color: Colors.white,fontSize: 14)),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Sunday: Closed', style: TextStyle(color: Colors.white,fontSize: 14)),
                    ),

                    // ... add the rest of the opening hours
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 60),


          Divider(color: Colors.green),
          SizedBox(height: 10),// The green line
          Text('© Copyright Taxperts 2024. All Rights Reserved', style: TextStyle(color: Colors.white)),

        ],
      ),
    );
  }
}


class WFooterMobile extends StatelessWidget {
  const WFooterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: EdgeInsets.all(15), // Padding around the footer content
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Address Column
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'images/LogoWh.png', // Replace with your asset path
                      height: 70, // Adjust the size as necessary
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('No. 101, Olcott Mawatha Colombo', style: TextStyle(color: Colors.white,fontSize: 12)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.email_rounded,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('connect@taxperts.lk', style: TextStyle(color: Colors.white,fontSize: 12)),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone_in_talk_rounded,
                            color: Colors.white,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('+94 777 148 839', style: TextStyle(color: Colors.white,fontSize: 12)),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(9),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Image.asset('images/fbIcon.png'),
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Image.asset('images/twIcon.png'),
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Image.asset('images/inIcon.png'),
                          ),
                          Container(
                            width: 35,
                            height: 35,
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                            ),
                            child: Image.asset('images/ytIcon.png'),
                          ),
                        ],
                      ),
                    ),

                    // Add social media icons here
                  ],
                ),
              ),
              // Company Column


            ],
          ),
          SizedBox(height: 40),


          Divider(color: Colors.green),
          SizedBox(height: 10),// The green line
          Text('© Copyright Taxperts 2024. All Rights Reserved', style: TextStyle(color: Colors.white)),

        ],
      ),
    );
  }
}



class ContactInfoDesk extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;

  const ContactInfoDesk({
    Key? key,
    required this.icon,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 50, // Adjust the size accordingly
          backgroundColor: Colors.green, // Your brand color
          child: Icon(
            icon,
            size: 50, // Adjust the size accordingly
            color: Colors.white,
          ),
        ),
        SizedBox(height: 25),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8),
        Text(
          content,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}


class ContactInfoTab extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;

  const ContactInfoTab({
    Key? key,
    required this.icon,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40, // Adjust the size accordingly
          backgroundColor: Colors.green, // Your brand color
          child: Icon(
            icon,
            size: 40, // Adjust the size accordingly
            color: Colors.white,
          ),
        ),
        SizedBox(height: 20),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 8),
        Text(
          content,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}


class ContactInfoMobile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String content;

  const ContactInfoMobile({
    Key? key,
    required this.icon,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30, // Adjust the size accordingly
          backgroundColor: Colors.green, // Your brand color
          child: Icon(
            icon,
            size: 30, // Adjust the size accordingly
            color: Colors.white,
          ),
        ),
        SizedBox(height: 15),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 5),
        Text(
          content,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}





class CustomFormField extends StatelessWidget {
  final String label;
  final Widget child;

  const CustomFormField({
    Key? key,
    required this.label,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
          ),
          SizedBox(height: 8),
          child,
        ],
      ),
    );
  }
}



class CustomFormFieldMobile extends StatelessWidget {
  final String label;
  final Widget child;

  const CustomFormFieldMobile({
    Key? key,
    required this.label,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
          ),
          SizedBox(height: 5),
          child,
        ],
      ),
    );
  }
}


class ServicePageCard extends StatelessWidget {
  final String title;
  final String description;
  final String assetImagePath; // Use this for local asset image path

  const ServicePageCard({
    Key? key,
    required this.title,
    required this.description,
    required this.assetImagePath, // Pass the asset image path here
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Container(
        width: 420,
        height: 480,
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: CircleAvatar(
                radius: 60,
                backgroundColor: AppColor.circleGreen,
                child: Image.asset(
                  assetImagePath,
                  width: 70.0, // Set your desired image width
                  height: 70.0, // and height
                  fit: BoxFit.cover, // This is to maintain the aspect ratio of the image
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: Colors.green
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            // SizedBox(height: 30),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     TextButton(
            //       onPressed: () {
            //         // Handle Learn More tap
            //       },
            //       child: Text('Learn More >>',style: TextStyle(color: AppColor.darkTextGreen),),
            //     ),
            //   ],
            // ),

          ],
        ),
      ),
    );
  }
}


class ServicePageCardTab extends StatelessWidget {
  final String title;
  final String description;
  final String assetImagePath; // Use this for local asset image path

  const ServicePageCardTab({
    Key? key,
    required this.title,
    required this.description,
    required this.assetImagePath, // Pass the asset image path here
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Container(
        width: 350,
        height: 400,
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: AppColor.circleGreen,
                child: Image.asset(
                  assetImagePath,
                  width: 60.0, // Set your desired image width
                  height: 60.0, // and height
                  fit: BoxFit.cover, // This is to maintain the aspect ratio of the image
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.green
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            // SizedBox(height: 30),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     TextButton(
            //       onPressed: () {
            //         // Handle Learn More tap
            //       },
            //       child: Text('Learn More >>',style: TextStyle(color: AppColor.darkTextGreen),),
            //     ),
            //   ],
            // ),

          ],
        ),
      ),
    );
  }
}


class ServicePageCardMobile extends StatelessWidget {
  final String title;
  final String description;
  final String assetImagePath; // Use this for local asset image path

  const ServicePageCardMobile({
    Key? key,
    required this.title,
    required this.description,
    required this.assetImagePath, // Pass the asset image path here
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Container(
        width: 280,
        height: 320,
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: CircleAvatar(
                radius: 40,
                backgroundColor: AppColor.circleGreen,
                child: Image.asset(
                  assetImagePath,
                  width: 50.0, // Set your desired image width
                  height: 50.0, // and height
                  fit: BoxFit.cover, // This is to maintain the aspect ratio of the image
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.green
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            // SizedBox(height: 30),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.end,
            //   children: [
            //     TextButton(
            //       onPressed: () {
            //         // Handle Learn More tap
            //       },
            //       child: Text('Learn More >>',style: TextStyle(color: AppColor.darkTextGreen),),
            //     ),
            //   ],
            // ),

          ],
        ),
      ),
    );
  }
}



class BlogCard extends StatelessWidget {
  final String title;
  final String text;
  final String assetImagePath;
  final VoidCallback onTap;

  const BlogCard({
    Key? key,
    required this.title,
    required this.text,
    required this.assetImagePath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          elevation: 5,
          clipBehavior: Clip.antiAlias,
          child: Container(
            width:420,
            height: 240,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  assetImagePath,
                  fit: BoxFit.cover, // This will cover the entire space of the container
                  width: double.infinity, // Ensure the image covers the card width
                  height: double.infinity, // Ensure the image covers the card height
                ),

                Positioned(
                  top: 80, // Position the button from the top of the Stack
                  child: ElevatedButton(
                    onPressed: onTap,
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(
                          0), // Removes elevation
                      overlayColor: MaterialStateProperty.all(
                          Colors.transparent), // Removes splash color
                      padding: MaterialStateProperty.all(
                          EdgeInsets.zero), // Removes default padding
                      backgroundColor: MaterialStateProperty.all(Colors
                          .transparent), // Sets button background color to white
                      // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      //   RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(40), // Adjust the border radius as needed
                      //   ),
                      // ),
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(
                                0.5), // Shadow color with opacity
                            spreadRadius: 1, // Spread radius
                            blurRadius: 3, // Blur radius
                            offset: Offset(
                                0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.asset(
                          'images/YTRed.png'), // Make sure this asset exists in your project
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.black87,),
          ),
        ),
      ],
    );
  }
}


class BlogCardMobile extends StatelessWidget {
  final String title;
  final String text;
  final String assetImagePath;
  final VoidCallback onTap;

  const BlogCardMobile({
    Key? key,
    required this.title,
    required this.text,
    required this.assetImagePath,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          elevation: 5,
          clipBehavior: Clip.antiAlias,
          child: Container(
            width:350,
            height: 200,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  assetImagePath,
                  fit: BoxFit.cover, // This will cover the entire space of the container
                  width: double.infinity, // Ensure the image covers the card width
                  height: double.infinity, // Ensure the image covers the card height
                ),

                Positioned(
                  top: 75, // Position the button from the top of the Stack
                  child: ElevatedButton(
                    onPressed: onTap,
                    style: ButtonStyle(
                      elevation: MaterialStateProperty.all(
                          0), // Removes elevation
                      overlayColor: MaterialStateProperty.all(
                          Colors.transparent), // Removes splash color
                      padding: MaterialStateProperty.all(
                          EdgeInsets.zero), // Removes default padding
                      backgroundColor: MaterialStateProperty.all(Colors
                          .transparent), // Sets button background color to white
                      // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      //   RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(40), // Adjust the border radius as needed
                      //   ),
                      // ),
                    ),
                    child: Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(
                                0.5), // Shadow color with opacity
                            spreadRadius: 1, // Spread radius
                            blurRadius: 3, // Blur radius
                            offset: Offset(
                                0, 1), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Image.asset(
                          'images/YTRed.png'), // Make sure this asset exists in your project
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                title,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.black87,),
          ),
        ),
      ],
    );
  }
}

