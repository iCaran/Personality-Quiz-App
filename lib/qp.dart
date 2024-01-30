import 'package:flutter/material.dart';
import './quiz.dart';
import './res.dart';
import './db.dart';

class QuizApp extends StatefulWidget {
  QuizApp({super.key});

  @override
  State<QuizApp> createState() => _MyAppState();
}

class _MyAppState extends State<QuizApp> {
  var _qid = 0;
  var _ts = [0, 0, 0, 0, 0];

  void _answer(int av) {
    setState(() {
      if (q[_qid]['math'] == "+") {
        _ts[(q[_qid]['type'] as int) - 1] += av;
      } else if (q[_qid]['math'] == "-") {
        _ts[(q[_qid]['type'] as int) - 1] += 5 - (av + 1);
      }
      _qid++;
    });
    print('answered');
    print("qid: $_qid, av: $av");
  }

  void _reset() {
    setState(() {
      _qid = 0;
      _ts = [0, 0, 0, 0, 0];
      Navigator.popUntil(context, (route) => route.isFirst);
    });
    print("reset");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            elevation: 4.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            title: const Text(
              'Personality Test',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
          ),
          body: _qid < q.length
              ? quiz(
                  q: q,
                  qid: _qid,
                  answer: _answer,
                  r: _reset,
                )
              : res(
                  s: _ts,
                  r: _reset,
                )),
    );
  }
}
