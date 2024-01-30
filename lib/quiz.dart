import 'package:flutter/material.dart';
import './q.dart';
import './a.dart';
import './ans.dart';

class quiz extends StatelessWidget {
  final List<Map<String, Object>> q;
  final int qid;
  final Function answer;
  final r;
  const quiz(
      {super.key,
      required this.q,
      required this.qid,
      required this.answer,
      required this.r});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LinearProgressIndicator(
          value: qid / 50,
        ),
        Text(
          '${50 - qid} questions left',
          style: TextStyle(fontSize: 16),
        ),
        Q("I " + (q[qid]['question'] as String)),
        for (var i = 0; i < 5; i++)
          A(answers[i]["Text"] as String, answer, answers[i]["value"] as int),
        Container(
          margin: EdgeInsets.all(45),
          child: ElevatedButton(
            child: Text(
              'Reset',
              style: TextStyle(
                fontSize: 25,
                color: Colors.blueGrey[900],
              ),
              textAlign: TextAlign.center,
            ),
            onPressed: r,
          ),
        ),
      ],
    );
  }
}
