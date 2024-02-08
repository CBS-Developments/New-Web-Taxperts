import 'package:flutter/material.dart';

import '../Componants.dart';
import '../colors.dart';

class ContactTablet extends StatefulWidget {
  const ContactTablet({super.key});

  @override
  State<ContactTablet> createState() => _ContactTabletState();
}

class _ContactTabletState extends State<ContactTablet> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  String? _selectedTaxType;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'images/Logo.png',
                    height: 50,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PopupMenuButton<String>(
                        onSelected: (String value) {
                          switch (value) {
                            case 'Home':
                            // Action for Home
                              Navigator.of(context).pushNamed('/home');
                              break;
                            case 'Tax Calculator':
                            // Action for Tax Calculator
                              Navigator.of(context).pushNamed('/tax-calculator');
                              break;
                            case 'Services':
                            // Action for Services
                              Navigator.of(context).pushNamed('/services');
                              break;
                            case 'Resources':
                            // Action for Resources
                              Navigator.of(context).pushNamed('/resources');
                              break;
                            case 'Blog':
                            // Action for Blog
                              Navigator.of(context).pushNamed('/blog');
                              break;
                            case 'Contact':
                            // Action for Contact
                              Navigator.of(context).pushNamed('/contact');
                              break;
                          // Add more cases for other menu items as needed
                            default:
                            // Handle unknown case
                              break;
                          }
                        },
                        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                          _buildPopupMenuItem('Home', false), // Assuming no item is selected by default
                          _buildPopupMenuItem('Tax Calculator', false),
                          _buildPopupMenuItem('Services', false),
                          _buildPopupMenuItem('Resources', false),
                          _buildPopupMenuItem('Blog', false),
                          _buildPopupMenuItem('Contact', true),
                        ],
                        icon: Icon(
                          Icons.menu,
                          color: Colors.green, // Set icon color here
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Action when button is pressed
                          },
                          child: Text(
                            'Start Now',
                            style: TextStyle(fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(130, 40),
                            primary: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
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
                Container(
                  height: 400, // Set the height of the header
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/contactBackTab.png'), // Replace with your image path
                      fit: BoxFit.cover,
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
                    Text(
                      'CONTACT',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 55,
                          fontFamily: 'Candal'
                      ),
                    ),
                    Text(
                      'Contact us for more details',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400
                      ),
                    ),
                    // Add more widgets for additional information or buttons
                  ],
                ),
              ],
            ),

            Container(
              color: AppColor.lightGreen,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 15),
                      child: Text(
                        'Meet the Consultants',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 35,
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 25),
                      child: Text(
                        'The team behind the digital transformation in taxation to ease of adhering to compliance obligation from anywhere any time',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(height: 25),
                    Column(
                      children: <Widget>[
                        Container(
                          width: 375,
                          height: 420,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                                'images/damith.png'), // Replace with your image path
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Damith Gangodawilage',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Founder/Chief Compliance',
                          style: TextStyle(
                            fontSize: 26,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 35,
                              height: 35,
                              padding: EdgeInsets.all(9),
                              margin: EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                color:
                                Colors.white, // Replace with your color
                                borderRadius: BorderRadius.circular(30),
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
                                  'images/fbIcon.png'), // Replace with your asset path
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              padding: EdgeInsets.all(7),
                              margin: EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                color:
                                Colors.white, // Replace with your color
                                borderRadius: BorderRadius.circular(30),
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
                              child: Image.asset('images/emailIcon.png'),
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              padding: EdgeInsets.all(9),
                              margin: EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                color:
                                Colors.white, // Replace with your color
                                borderRadius: BorderRadius.circular(30),
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
                              child: Image.asset('images/twIcon.png'),
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              padding: EdgeInsets.all(11),
                              margin: EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                color:
                                Colors.white, // Replace with your color
                                borderRadius: BorderRadius.circular(30),
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
                              child: Image.asset('images/inIcon.png'),
                            ),
                          ],
                        ),

                        SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.all(16.0), // Add some padding
                          margin: EdgeInsets.all(10),
                          color: Colors.white, // Background color for the container
                          child: Text(
                            "Damith Gangodawilage is an award-winning serial entrepreneur with over 20 years of experience in taxation and financial management locally and internationally. He is the Founding Managing Director and Chief Compliance Officer of Taxperts Lanka Pvt. Ltd. Damith won eSwabhimani digital social impact award from the Information and Communication Technology Agency in Sri Lanka and NBQSA award from BCS, Chartered Institute for IT and nominated for Asia Pacific ICT Awards in 2019.\n\n"
                                "Apart from Taxperts, Damith engages with Corporate Business Solutions Pvt. Ltd as the Chief Business Architect and Jt. Managing Partner of Assurance Partners (Chartered Accountants).\n\n"
                                "Currently Damith serves as the Vice President of the Sri Lanka Institute of Taxation, the National Body of Tax Professionals established by the Act of Parliament and a Director/Treasurer of the Colombo Chamber of Commerce. Also, he is a Member of CMA COVID19 SME Development Committee, a joint initiative of professional bodies, Chambers, bankers and industry experts established by the Institute of Certified Management Accountants of Sri Lanka and CA SME Task Force established by Institute of Chartered Accountants, Sri Lanka",
                            style: TextStyle(
                              fontSize: 16.0, // The font size
                              color: Colors.black, // Text color
                              height: 1.5, // Line height
                            ),
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 35.0),
              child: Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 15.0,
                      ),
                      child: Text(
                        'Contact Info',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 32,
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.w800),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly, // Space items out evenly
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 30,),
                            ContactInfoTab(
                              icon: Icons.phone,
                              title: 'Call Us',
                              content: '077 714 8839\n011 242 4922',
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 60,),
                            ContactInfoTab(
                              icon: Icons.email,
                              title: 'Mail Us',
                              content: 'connect@taxperts.lk',
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20,),
                            ContactInfoTab(
                              icon: Icons.location_on,
                              title: 'Address',
                              content:
                              'Taxperts Lanka Pvt. Ltd\nNo. 101, Olcott Mawatha\nColombo',
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),



            Stack(
              alignment: Alignment.center,
              children: [
                // Background image
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.5, // Adjust the opacity as needed
                    child: Image.asset(
                      'images/formBack.png', // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Form
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          'Get In Touch',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 34,
                            fontFamily: 'Almarai',
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(flex: 1, child: Column()),
                          Expanded(
                            flex: 10,
                            child: Container(

                              child: Form(
                                child: Wrap(
                                  alignment: WrapAlignment.center,
                                  runSpacing: 20,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: CustomFormField(
                                            label: 'Type of Taxes:',
                                            child: DropdownButtonFormField<String>(
                                              decoration: InputDecoration(
                                                filled: true,
                                                fillColor: Colors.white,
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.black),
                                                ),
                                              ),
                                              value: _selectedTaxType,
                                              items: [
                                                'Tax Type 1',
                                                'Tax Type 2',
                                                'Tax Type 3'
                                              ].map((String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value),
                                                );
                                              }).toList(),
                                              onChanged: (newValue) {
                                                // Update the state
                                              },
                                            ),
                                          ),
                                        ),

                                        Expanded(
                                          child: CustomFormField(
                                            label: 'Name:',
                                            child: TextFormField(
                                              controller: _nameController,
                                              decoration: InputDecoration(
                                                filled: true,
                                                fillColor: Colors.white,
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        Expanded(
                                          child: CustomFormField(
                                            label: 'Phone Number:',
                                            child: TextFormField(
                                              controller: _phoneController,
                                              decoration: InputDecoration(
                                                filled: true,
                                                fillColor: Colors.white,
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),

                                        Expanded(
                                          child: CustomFormField(
                                            label: 'Email Address:',
                                            child: TextFormField(
                                              controller: _emailController,
                                              decoration: InputDecoration(
                                                filled: true,
                                                fillColor: Colors.white,
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide(color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),

                                    CustomFormField(
                                      label: 'Message:',
                                      child: TextFormField(
                                        controller: _messageController,
                                        decoration: InputDecoration(
                                          filled: true,
                                          fillColor: Colors.white,
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black),
                                          ),
                                        ),
                                        maxLines: 3,
                                      ),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 20.0),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            // Submit button action
                                            // Use the controllers to get the input values
                                          },
                                          child: Text('Submit',style: TextStyle(fontSize: 18),),
                                          style: ElevatedButton.styleFrom(
                                            fixedSize: Size(130, 40), // Set the width and height
                                            primary: AppColor
                                                .buttonGreen, // Set the background color to green
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                              BorderRadius.circular(5), // Set the border radius
                                            ),
                                          ),)
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(flex: 1, child: Column()),
                        ],
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),

            Container(
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'images/map300.png'), // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
            ),

            WFooterTab(),

          ],
        ),
      ),



    );
  }
  PopupMenuEntry<String> _buildPopupMenuItem(String text, bool isSelected) {
    return PopupMenuItem<String>(
      value: text,
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.green : Colors.black,
          fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          fontSize: 18,
        ),
      ),
    );
  }
}
