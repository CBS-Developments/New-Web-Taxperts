import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../CalculatorComponants.dart';
import '../Componants.dart';
import '../colors.dart';

class FormTablet extends StatefulWidget {
  const FormTablet({super.key});

  @override
  State<FormTablet> createState() => _FormTabletState();
}

class _FormTabletState extends State<FormTablet> {

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
      showRequiredFieldsSnackBar(context);
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
      "device": 'Tablet',
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
        showSuccessSnackBar(context);
        _clearFormInputs();// Show the success SnackBar
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
      backgroundColor: Colors.green, // Custom background color
      content: const Row(
        children: [
          Icon(Icons.check_circle_outline, color: Colors.white), // Custom icon
          SizedBox(width: 8), // Space between icon and text
          Expanded(
            child: Text(
              'Submission successful! We will contact you soon!',
              style: TextStyle(color: Colors.white, fontSize: 16), // Custom text style
            ),
          ),
        ],
      ),
      action: SnackBarAction(
        label: 'Undo',
        textColor: Colors.white, // Custom text color for the action
        onPressed: () {
          // Handle action (e.g., undo the submission)
        },
      ),
      duration: const Duration(seconds: 5), // Custom duration
      behavior: SnackBarBehavior.floating, // Make it floating
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), // Custom shape
      margin: const EdgeInsets.all(10), // Margin from the edges
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Custom padding
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _clearFormInputs() {
    // Reset the controllers
    _nameController.clear();
    _phoneController.clear();
    _emailController.clear();
    _messageController.clear();

    // Reset other stateful values to their initial states
    setState(() {
      _selectedTaxType = null;
      _hasTIN = null;
    });
  }

  void showRequiredFieldsSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      backgroundColor: Colors.red, // Custom background color for emphasis
      content: const Row(
        children: [
          Icon(Icons.warning_amber_outlined, color: Colors.white), // Custom icon for warning
          SizedBox(width: 8), // Space between icon and text
          Text(
            'Please fill in all required fields', // The message
            style: TextStyle(color: Colors.white, fontSize: 16), // Custom text style
          ),
        ],
      ),
      duration: const Duration(seconds: 5), // Custom duration
      behavior: SnackBarBehavior.floating, // Make it floating
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)), // Custom shape
      margin: const EdgeInsets.all(10), // Margin from the edges
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10), // Custom padding
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
            height: 80,
            color: Colors.white,
            padding: const EdgeInsets.symmetric(
                horizontal: 20.0), // Adjust padding as needed
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'images/Logo.png', // Replace with your asset path
                  height: 50, // Adjust the size as necessary
                ),
              ],
            ),
          ),

          Container(
            color: Colors.white,
            margin: const EdgeInsets.symmetric(horizontal: 80,vertical: 30),
            padding: const EdgeInsets.symmetric(horizontal: 10),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 60,
                  width: double.infinity,
                  color: AppColor.darkTextGreen,
                  child: const Center(
                    child: Text(
                      'Request a callback',
                      style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                // Container(
                //   height: 100,
                //   color: Colors.grey.shade700,
                // ),
                // SizedBox(height: 20.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: CustomFormFieldTab2(
                        label: 'Type of taxes:  ',
                        child: DropdownButtonFormField(
                          value: _selectedTaxType,
                          items: ['Individual Income Tax (IIT)',
                            'Corporate Income Tax (CIT)',
                            'Partnership Income Tax (PIT) ',
                            'Value Added Tax (VAT)',
                            'Advance Personal Income Tax (APIT)',
                            'Advance Income Tax (AIT)',
                            'Capital Gain Tax (CGT)',
                            'Simplified Value Added Tax (SVAT)',
                            'Stamp Duty (SD)',
                            'Other Taxes ',
                            'Transfer Pricing',
                            'International Double Taxation',
                            'Expat Taxation',
                            'Tax Advisory Services',
                            'Return Compliance',
                            'Social Security Contribution Levy (SSCL)',
                            'With Holding Tax (WHT)'].map((String value) {
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
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    Expanded(
                      child: CustomFormFieldTab2(
                        label: 'Name: ',
                        child: TextField(
                          controller: _nameController,
                          decoration: const InputDecoration(
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
                const SizedBox(height: 20.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: CustomFormFieldTab2(
                        label: 'Email: ',
                        child: TextField(
                          controller: _emailController,
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    Expanded(
                      child: CustomFormFieldTab2(
                        label: 'Phone Number: ',
                        child: TextField(
                          controller: _phoneController,
                          decoration: const InputDecoration(
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
                const SizedBox(height: 20.0),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal:40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Do you have Taxpayer Identification Number (TIN)?',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
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
                      const Text('Yes'),
                      Radio(
                        value: 'No',
                        groupValue: _hasTIN,
                        onChanged: (value) {
                          setState(() {
                            _hasTIN = value;
                          });
                        },
                      ),
                      const Text('No'),
                    ],
                  ),
                ),
                const SizedBox(height: 20.0),
                CustomFormFieldTab2(
                  label: 'Message: ',
                  child: TextField(
                    controller: _messageController,
                    decoration: const InputDecoration(
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
                const SizedBox(height: 20.0),
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
                    child: const Text('Submit',style: TextStyle(
                        fontSize: 18
                    ),),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(
                          120, 40), // Set the width and height
                      primary: AppColor
                          .darkTextGreen, // Set the background color to green
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            5), // Set the border radius
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20.0),
              ],
            ),

          ),

          const WFooterTab(),
        ],
        ),
      ),
    );
  }
}
