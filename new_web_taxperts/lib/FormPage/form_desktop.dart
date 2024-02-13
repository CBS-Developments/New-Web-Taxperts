import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:new_web_taxperts/Componants.dart';
import 'package:http/http.dart' as http;
import '../CalculatorComponants.dart';
import '../colors.dart';

class FormDesktop extends StatefulWidget {
  const FormDesktop({super.key});

  @override
  State<FormDesktop> createState() => _FormDesktopState();
}

class _FormDesktopState extends State<FormDesktop> {

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();
  String? _selectedTaxType;
  String? _hasTIN;

  Future<void> addSubmission(BuildContext context) async {
    // Validate input fields
    if (_nameController.text.trim().isEmpty ||
        _phoneController.text.trim().isEmpty ||
        _emailController.text.trim().isEmpty ||
        _messageController.text.isEmpty ) {
      // Show an error message if any of the required fields are empty
      snackBar(context, "Please fill in all required fields", Colors.red);
      return;
    }

    // Other validation logic can be added here

    // If all validations pass, proceed with the registration
    var url = "http://dev.workspace.cbs.lk/addSubmission.php";

    var data = {
      "name_": _nameController.text.trim(),
      "tax_type": _selectedTaxType,
      "email": _emailController.text.toString().trim(),
      "phone": _phoneController.text.toString().trim(),
      "tin": _hasTIN,
      "message_": _messageController.text.toString().trim(),
      "from_": 'Callback Form',
      "device": 'Desktop',
      "active": '1',
      "read_status": '0',
      "actions": 'None',
    };

    http.Response res = await http.post(
      Uri.parse(url),
      body: data,
      headers: {
        "Accept": "application/json",
        "Content-Type": "application/x-www-form-urlencoded",
      },
      encoding: Encoding.getByName("utf-8"),
    );

    if (res.statusCode.toString() == "200") {
      if (jsonDecode(res.body) == "true") {
        if (!mounted) return;
        showSuccessSnackBar(context); // Show the success SnackBar
      } else {
        if (!mounted) return;
        snackBar(context, "Error", Colors.yellow);
      }
    } else {
      if (!mounted) return;
      snackBar(context, "Error", Colors.redAccent);
    }
  }

  void showSuccessSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content:
      Text('Submission successful! We will contact you soon!'),
      backgroundColor: Colors.green, // You can customize the color
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            width: double.infinity,
            height: 100,
            color: Colors.white,
            padding: EdgeInsets.symmetric(
                horizontal: 20.0), // Adjust padding as needed
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/Logo.png', // Replace with your asset path
                  height: 70, // Adjust the size as necessary
                ),
              ],
            ),
          ),

          Container(
            color: Colors.white,
            margin: EdgeInsets.symmetric(horizontal: 160,vertical: 50),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 80,
                  width: double.infinity,
                  color: AppColor.darkTextGreen,
                  child: Center(
                    child: Text(
                      'Request a callback',
                      style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                // Container(
                //   height: 100,
                //   color: Colors.grey.shade700,
                // ),
                // SizedBox(height: 20.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: CustomFormField(
                        label: 'Type of taxes:  ',
                        child: DropdownButtonFormField(
                          value: _selectedTaxType,
                          items: ['Individual Income Tax (IIT)', 'Other'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              _selectedTaxType = value;
                            });
                          },
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
                    SizedBox(width: 20.0),
                    Expanded(
                      child: CustomFormField(
                        label: 'Name: ',
                        child: TextField(
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
                SizedBox(height: 20.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: CustomFormField(
                        label: 'Email: ',
                        child: TextField(
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
                    SizedBox(width: 20.0),
                    Expanded(
                      child: CustomFormField(
                        label: 'Phone Number: ',
                        child: TextField(
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
                  ],
                ),
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:40.0),
                  child: Text(
                    'Do you have Taxpayer Identification Number (TIN)?',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:40.0),
                  child: Row(
                    children: <Widget>[
                      Radio(
                        value: 'Yes',
                        groupValue: _hasTIN,
                        onChanged: (value) {
                          setState(() {
                            _hasTIN = value;
                          });
                        },
                      ),
                      Text('Yes'),
                      Radio(
                        value: 'No',
                        groupValue: _hasTIN,
                        onChanged: (value) {
                          setState(() {
                            _hasTIN = value;
                          });
                        },
                      ),
                      Text('No'),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                CustomFormField(
                  label: 'Message: ',
                  child: TextField(
                    controller: _messageController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                    keyboardType: TextInputType.multiline,
                    minLines: 3,
                    maxLines: 5,
                  ),
                ),
                SizedBox(height: 20.0),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Submit callback request
                      print('Type of taxes: $_selectedTaxType');
                      print('Name: ${_nameController.text}');
                      print('Email: ${_emailController.text}');
                      print('Phone Number: ${_phoneController.text}');
                      print('TIN: $_hasTIN');
                      print('Message: ${_messageController.text}');

                      addSubmission(context);

                    },
                    child: Text('Submit',style: TextStyle(
                        fontSize: 18
                    ),),
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                          120, 40), // Set the width and height
                      primary: AppColor
                          .buttonGreen, // Set the background color to green
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            5), // Set the border radius
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20.0),
              ],
            ),
          ),
          WFooter(),
        ],
        ),
      ),
    );
  }
}
