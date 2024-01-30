import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0), // Adjust as needed
      color: Colors.grey[200], // Optional background color
      padding: const EdgeInsets.all(10.0), // Adjust as needed
      child: Text(
        "Describe yourself as you generally are now, not as you wish to be in the future.\nDescribe yourself as you honestly see yourself, in relation to other people you know of the same sex as you are, and roughly your same age.\n\nIndicate for each statement which answer best fits as a description of you:",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
