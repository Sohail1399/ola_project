import 'package:flutter/material.dart';
import 'package:ola_project/view/screens/cancel_aplication/cancel_application_screen.dart';
import 'package:ola_project/view/untils/colors.dart';

class ButtomSheet extends StatefulWidget {
  const ButtomSheet({super.key});

  @override
  State<ButtomSheet> createState() => _ButtomSheetState();
}

class _ButtomSheetState extends State<ButtomSheet> {
  @override
  Widget build(BuildContext context) {
    var textScaleFactor = MediaQuery.of(context).textScaleFactor;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextButton(
            onPressed: () {
              _showBottomSheet(context);
            },
            child: Text(
              "Cancel Application",
              style: TextStyle(
                color: cancelButtonTextColor,
                fontSize: 16 * textScaleFactor,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var textScaleFactor = MediaQuery.of(context).textScaleFactor;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(screenWidth * 0.04),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Are you sure?',
                      style: TextStyle(
                        fontSize: 18 * textScaleFactor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.clear),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),
                Padding(
                  padding: EdgeInsets.only(right: screenWidth * 0.2),
                  child: Text(
                    'By continuing, all the documents and information you’ve entered will be deleted',
                    style: TextStyle(
                      fontSize: 14 * textScaleFactor,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.07),
                Column(
                  children: [
                    SizedBox(
                      height: screenHeight * 0.06,
                      width: screenWidth,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CancelApplicationScreen(),
                            ),
                          );
                        },
                        child: Text('Yes! Cancel Application'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: normalTextCOlor,
                          backgroundColor: boldButtomColor,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    SizedBox(
                      height: screenHeight * 0.06,
                      width: screenWidth,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text('No! Go back'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: boldTextCOlor,
                          backgroundColor: normalButtomColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
