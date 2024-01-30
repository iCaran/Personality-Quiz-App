import 'package:flutter/material.dart';

class A extends StatelessWidget {
  final String a;
  final am;
  final int av;

  const A(this.a, this.am, this.av);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.tryParse('200'),
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            textStyle: TextStyle(fontSize: 18),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(10.0), // Set the shape of the button
            ),
            padding: EdgeInsets.all(20)),
        child: Text(a),
        onPressed: () => am(av),
      ),
    );
  }
}
