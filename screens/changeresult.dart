import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mynote/screens/datalist.dart';

class CustomAlertDialog extends StatelessWidget {
  final String title;
  final String content;
  final List<Widget> actions;

  const CustomAlertDialog({
     super.key,
    required this.title,
    required this.content,
    required this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.grey[900], // Background color of the dialog
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 30),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white, // Title text color
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Text(
              content,
              style: TextStyle(
                color: Colors.white54, // Content text color
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Divider(color: Colors.grey,endIndent: 0,),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: actions,
            ),
            SizedBox(height: 20.0)
          ],
        ),
      ),
    );
  }
}

void showCustomAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return CustomAlertDialog(
        title: 'Change Result',
        content: 'Choose one of the following options:',
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              // Perform action when "Todo" is pressed
            },
            child: Text(
              'Todo',
              style: TextStyle(color: Colors.grey.shade300), // Button text color
            ),
          ),
          Iwidget(fontsize: 40,fontWeight: FontWeight.w100,),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              // Perform action when "Pass" is pressed
            },
            child: Text(
              'Pass',
              style: TextStyle(color: Colors.grey.shade300), // Button text color
            ),
          ),
         Iwidget(fontsize: 40,fontWeight: FontWeight.w100,),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              // Perform action when "Fail" is pressed
            },
            child: Text(
              'Fail',
              style: TextStyle(color: Colors.grey.shade300), // Button text color
            ),
          ),
        ],
      );
    },
  );
}

