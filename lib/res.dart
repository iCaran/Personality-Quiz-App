import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import './query.dart';

class res extends StatefulWidget {
  final List s;
  final r;

  res({
    super.key,
    required this.s,
    required this.r,
  });

  @override
  State<res> createState() => _resState();
}

class _resState extends State<res> {
  final url =
      "https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=AIzaSyBKAvjPSh02rTJjnquJeZjGonUV3Wfhwow";

  final head = {'Content-Type': 'application/json'};

  var data = {
    "contents": [
      {
        "parts": [
          {"text": ""}
        ]
      }
    ]
  };

  var _res = "Loading AI summary of your test result...";

  @override
  void initState() {
    super.initState();
    gem();
  }

  String get rp {
    return "\nExtraversion: " +
        widget.s[0].toString() +
        "\nAgreeableness: " +
        widget.s[1].toString() +
        "\nConscientiousness: " +
        widget.s[2].toString() +
        "\nEmotional Stability: " +
        widget.s[3].toString() +
        "\nIntellect/Imagination: " +
        widget.s[4].toString() +
        "\n";
  }

  gem() async {
    final data = {
      "contents": [
        {
          "parts": [
            {"text": query(widget.s)}
          ]
        }
      ]
    };

    await http
        .post(Uri.parse(url), headers: head, body: jsonEncode(data))
        .then((value) {
      if (value.statusCode == 200) {
        var result = jsonDecode(value.body);
        print(result['candidates'][0]['content']['parts'][0]['text']);
        setState(() {
          _res = result['candidates'][0]['content']['parts'][0]['text'];
        });
      } else {
        print("error");
      }
    }).catchError((e) {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Result: ',
            style:
                TextStyle(fontSize: 40, fontWeight: FontWeight.bold, height: 2),
            textAlign: TextAlign.center,
          ),
          Text(
            rp,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey),
            textAlign: TextAlign.center,
          ),
          Expanded(
              child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.all(50),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(
                      _res.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[700],
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ))),
          Container(
            margin: EdgeInsets.all(15),
            child: ElevatedButton(
              child: Text(
                'Reset',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.blueGrey[900],
                ),
                textAlign: TextAlign.center,
              ),
              onPressed: widget.r,
            ),
          ),
        ],
      ),
    );
  }
}
