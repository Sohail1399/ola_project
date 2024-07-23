import 'package:flutter/material.dart';
import 'package:ola_project/view/untils/colors.dart';

class CancelApplicationScreen extends StatefulWidget {
  const CancelApplicationScreen({super.key});

  @override
  _CancelApplicationScreenState createState() => _CancelApplicationScreenState();
}

class _CancelApplicationScreenState extends State<CancelApplicationScreen> {
  String? _selectedReason;
  Color _buttonColor = normalButtomColor;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cancel Application'),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.05, top: screenHeight * 0.03),
              child: Column(
                children: [
                  Text(
                    'Tell us why you want to cancel the application',
                    style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.02),
            SizedBox(
              height: screenHeight * 0.34,
              child: Card(
                elevation: 2,
                margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    RadioListTile<String>(
                      title: Text('Need to change city operation'),
                      value: 'change_city',
                      groupValue: _selectedReason,
                      onChanged: (value) {
                        setState(() {
                          _selectedReason = value;
                          _buttonColor = boldButtomColor;
                        });
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                      child: Divider(),
                    ),
                    RadioListTile<String>(
                      title: Text('Need to edit verified details'),
                      value: 'edit_details',
                      groupValue: _selectedReason,
                      onChanged: (value) {
                        setState(() {
                          _selectedReason = value;
                          _buttonColor = boldButtomColor;
                        });
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                      child: Divider(),
                    ),
                    RadioListTile<String>(
                      title: Text('Not able to submit application'),
                      value: 'unable_to_submit',
                      groupValue: _selectedReason,
                      onChanged: (value) {
                        setState(() {
                          _selectedReason = value;
                          _buttonColor = boldButtomColor;
                        });
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
                      child: Divider(),
                    ),
                    RadioListTile<String>(
                      title: Text('Other'),
                      value: 'other',
                      groupValue: _selectedReason,
                      onChanged: (value) {
                        setState(() {
                          _selectedReason = value;
                          _buttonColor = boldButtomColor;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.3),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
              child: SizedBox(
                width: screenWidth * 0.90,
                height: screenHeight * 0.07,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  child: Text('Cancel Application'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _buttonColor,
                    foregroundColor: normalTextCOlor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
