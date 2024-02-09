import 'package:flutter/material.dart';
import 'package:new_web_taxperts/Componants.dart';

class FormDesktop extends StatefulWidget {
  const FormDesktop({super.key});

  @override
  State<FormDesktop> createState() => _FormDesktopState();
}

class _FormDesktopState extends State<FormDesktop> {
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
          margin: EdgeInsets.symmetric(horizontal: 160,vertical: 50),
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Request a callback',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                height: 100,
                color: Colors.grey.shade700,
              ),
              SizedBox(height: 20.0),
              Row(
                children: <Widget>[
                  Expanded(
                    child: CustomFormField(
                      label: 'Type of taxes:  ',
                      child: DropdownButtonFormField(
                        items: ['Individual Income Tax (IIT)', 'Other'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {},
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
              Text(
                'Do you have Taxpayer Identification Number (TIN)?',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Row(
                children: <Widget>[
                  Radio(
                    value: 'Yes',
                    groupValue: null,
                    onChanged: (value) {},
                  ),
                  Text('Yes'),
                  Radio(
                    value: 'No',
                    groupValue: null,
                    onChanged: (value) {},
                  ),
                  Text('No'),
                ],
              ),
              SizedBox(height: 20.0),
              CustomFormField(
                label: 'Message: ',
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Message',
                    filled: true,
                    fillColor: Colors.grey[200],
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
                  },
                  child: Text('Submit'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
        ],
        ),
      ),
    );
  }
}
