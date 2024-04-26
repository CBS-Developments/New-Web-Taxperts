import 'package:flutter/material.dart';
import 'package:new_web_taxperts/Componants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../colors.dart';

class BlogDesktop extends StatefulWidget {
  const BlogDesktop({super.key});

  @override
  State<BlogDesktop> createState() => _BlogDesktopState();
}

class _BlogDesktopState extends State<BlogDesktop> with SingleTickerProviderStateMixin {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.white,
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0), // Adjust padding as needed
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Space between items
                children: [
                  Image.asset(
                    'images/Logo.png', // Replace with your asset path
                    height: 60, // Adjust the size as necessary
                  ),
                  Row(
                    mainAxisSize: MainAxisSize
                        .min, // To wrap the row width around its children
                    children: <Widget>[
                      _buildMenuItem('Home', false, () {
                        // Action for Home menu item
                        Navigator.of(context).pushNamed('/home');
                      }),
                      _buildMenuItem('Tax Calculator', false, () {
                        // Action for Tax Calculator menu item
                        Navigator.of(context).pushNamed('/tax-calculator');
                      }),
                      _buildMenuItem('Services', false, () {
                        // Action for Services menu item
                        Navigator.of(context).pushNamed('/services');
                      }),
                      _buildMenuItem('Resources', false, () {
                        // Action for Resources menu item
                        Navigator.of(context).pushNamed('/resources');
                      }),
                      _buildMenuItem('Blog', true, () {
                        // Action for Blog menu item
                        Navigator.of(context).pushNamed('/blog');
                      }),
                      _buildMenuItem('Contact', false, () {
                        // Action for Contact menu item
                        Navigator.of(context).pushNamed('/contact');
                      }),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/start');
                        // Action when button is pressed
                      },
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(130, 40), // Set the width and height
                        primary: AppColor
                            .buttonGreen, // Set the background color to green
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(5), // Set the border radius
                        ),
                      ),
                      child: const Text(
                        'Start Now',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
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
                    height: 500, // Set the height of the header
                    decoration: const BoxDecoration(
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
                    const SizedBox(
                      height: 30,
                    ),
                    const SlideInAnimation(
                      delay: 100,
                      child: FadeInText(
                        text: 'BLOG',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 60,
                              fontFamily: 'Candal'),
                        ),
                      ),


                    const SizedBox(
                      height: 15,
                    ),
                    const SlideInAnimation(
                      delay: 100,
                      child: FadeInText(
                        text: 'Connect with Taxperts Blog to get the\nlatest development in the taxation domain.',
                       style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400),
                        ),
                      ),

                    // Add more widgets for additional information or buttons

                    Padding(
                      padding: const EdgeInsets.only(top: 120.0),
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
                              width: 40,
                              height: 40,
                              padding: const EdgeInsets.all(10),
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
                                child: const Text(
                              "Watch Now",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),


        Padding(
          padding: const EdgeInsets.symmetric(vertical: 100.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlogCard(
                title: 'TaxQ Episode 1 (සිංහල)- අගෝස්තු 15 බදු \nගෙවන්නන්ට වැදගත් වන්නේ ඇයි?',
                text: '',
                assetImagePath: 'images/V01.png', // Local asset path
                onTap: () {
                  _launchURL('https://youtu.be/soNac8A5LWE');
                },
              ),
              BlogCard(
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

          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(
      String text, bool isSelected, VoidCallback onPressedAction) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: 12.0), // Adjust spacing as needed
      child: TextButton(
        onPressed: onPressedAction,
        style: TextButton.styleFrom(
          primary: isSelected
              ? AppColor.headingDarkGreen
              : Colors.black, // Text color based on selection
          textStyle: TextStyle(
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            fontSize: 18,
          ),
        ),
        child: Text(text),
      ),
    );
  }
}


void _launchURL(String url) async {
  if (!await launch(url)) throw 'Could not launch $url';
}
