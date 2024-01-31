import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Personality Quiz App!',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: const EdgeInsets.all(15.0), // Adjust as needed
              padding: const EdgeInsets.all(10.0), // Adjust as needed
              child: Text(
                "The IPIP BFFM (International Personality Item Pool Big Five Factor Markers) personality test is universally recognized as an established standard and assessment evaluation method. The general consensus in academic psychology is that there are five fundamental personality traits. This model is assumed in most personality research, and is the basis of many of the most well regarded tests employed by psychologists who maintain close connections with academia. The \"big five\" tend to not be popular in consumer focused personality assessment or self-help because to many people the feedback of the model seems relatively basic. This test uses public domain scales from the International Personality Item Pool.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Container(
                margin: const EdgeInsets.all(15.0), // Adjust as needed
                color: Colors.grey[200], // Optional background color
                padding: const EdgeInsets.all(10.0), // Adjust as needed
                child: InkWell(
                  child: Text(
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w600),
                    'Inspired by William Passmore',
                  ),
                  onTap: () => launch(
                      "https://github.com/NerdiOrg/Python-IPIP-BFFM/tree/master"),
                )),
            Container(
              margin: const EdgeInsets.all(15.0), // Adjust as needed
              color: Colors.grey[200], // Optional background color
              padding: const EdgeInsets.all(10.0), // Adjust as needed
              child: Text(
                "Describe yourself as you generally are now, not as you wish to be in the future.\nDescribe yourself as you honestly see yourself, in relation to other people you know of the same sex as you are, and roughly your same age.\n\nIndicate for each statement which answer best fits as a description of you.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/quiz');
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey, // background color
                onPrimary: Colors.white, // text color
                shadowColor: Colors.grey, // shadow color
                elevation: 5, // shadow elevation
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30), // round corners
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: 20, vertical: 15), // padding
              ),
              child: Text(
                'Begin',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white70),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
