import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Componants.dart';

class BlogMobile extends StatefulWidget {
  const BlogMobile({super.key});

  @override
  State<BlogMobile> createState() => _BlogMobile();
}

class _BlogMobile extends State<BlogMobile> with SingleTickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 70,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/Logo.png',
                    height: 40,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PopupMenuButton<String>(
                        onSelected: (String value) {
                          switch (value) {
                            case 'Home':
                              Navigator.of(context).pushNamed('/home');
                              break;
                            case 'Tax Calculator':
                              Navigator.of(context).pushNamed('/tax-calculator');
                              break;
                            case 'Services':
                              Navigator.of(context).pushNamed('/services');
                              break;
                            case 'Resources':
                              Navigator.of(context).pushNamed('/resources');
                              break;
                            case 'Blog':
                              Navigator.of(context).pushNamed('/blog');
                              break;
                            case 'Contact':
                              Navigator.of(context).pushNamed('/contact');
                              break;
                            case 'Start Now':
                              Navigator.of(context).pushNamed('/start');
                              break;
                            default:
                            // Handle unknown case
                              break;
                          }
                        },
                        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                          PopupMenuItem<String>(
                            value: 'Home',
                            child: Text('Home'),
                          ),
                          PopupMenuItem<String>(
                            value: 'Tax Calculator',
                            child: Text('Tax Calculator'),
                          ),
                          PopupMenuItem<String>(
                            value: 'Services',
                            child: Text('Services'),
                          ),
                          PopupMenuItem<String>(
                            value: 'Resources',
                            child: Text('Resources'),
                          ),
                          PopupMenuItem<String>(
                            value: 'Blog',
                            child: Text('Blog'),
                          ),
                          PopupMenuItem<String>(
                            value: 'Contact',
                            child: Text('Contact'),
                          ),
                          PopupMenuDivider(),
                          PopupMenuItem<String>(
                            value: 'Start Now',
                            child: ListTile(
                              leading: Icon(Icons.star, color: Colors.green), // Optional icon
                              title: Text('Start Now'),
                              onTap: () {
                                Navigator.of(context).pop('Start Now'); // Close the menu and navigate
                              },
                            ),
                          ),
                        ],
                        icon: Icon(
                          Icons.menu,
                          color: Colors.green, // Set icon color here
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                // Background image
                AnimatedOpacity(
                  opacity: _opacityAnimation.value,
                  duration: const Duration(seconds: 2),
                  child: Container(
                    height: 300, // Set the height of the header
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            'images/blohBack.png'), // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                // Overlay (darken the image)
                // Container(
                //   height: 300,
                //   color: Colors.black.withOpacity(0.3), // Adjust the opacity as needed
                // ),
                // Text and button
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 30,
                    ),
                    SlideInAnimation(
                      delay: 100,
                      child: FadeInText(
                        text: 'BLOG',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontFamily: 'Candal'),
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: SlideInAnimation(
                        delay: 100,
                        child: FadeInText(
                          text: 'Connect with Taxperts Blog to get the\nlatest development in the taxation domain.',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    // Add more widgets for additional information or buttons

                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () async {
                              const url = 'https://www.youtube.com/@taxperts';
                              if (await canLaunch(url)) {
                                await launch(url);
                              } else {
                                // You can show an error message or handle the failure in your preferred way
                                print('Could not launch $url');
                              }
                            },
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
                              width: 35,
                              height: 35,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.white,

                              ),
                              child: Image.asset(
                                  'images/YTRed.png'), // Make sure this asset exists in your project
                            ),
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 10.0),
                            child: TextButton(
                                onPressed: () async {
                                  const url = 'https://www.youtube.com/@taxperts';
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    // You can show an error message or handle the failure in your preferred way
                                    print('Could not launch $url');
                                  }
                                },
                                child: Text(
                                  "Watch Now",
                                  style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),

            SizedBox(height: 50,),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlogCardMobile(
                      title: 'TaxQ Episode 1 (සිංහල)- අගෝස්තු 15 බදු \nගෙවන්නන්ට වැදගත් වන්නේ ඇයි?',
                      text: '',
                      assetImagePath: 'images/V01.png', // Local asset path
                      onTap: () {
                        _launchURL('https://youtu.be/soNac8A5LWE');
                      },
                    ),
                  ],
                ),
              ),
            ),
           
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BlogCardMobile(
                      title: 'Taxperts System Demo',
                      text: '',
                      assetImagePath: 'images/V02.png', // Local asset path
                      onTap: () {
                        _launchURL('https://youtu.be/Zss0kuw_apY');
                      },
                    ),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}


void _launchURL(String url) async {
  if (!await launch(url)) throw 'Could not launch $url';
}