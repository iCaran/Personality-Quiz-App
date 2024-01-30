import 'package:flutter/material.dart';

class gem extends StatelessWidget {
  final G;
  const gem({super.key, required this.G});

  String get t {
    String a = "";
    G
        .text("Write a story about a magic backpack.")
        .then((value) => a = value?.output)

        /// or value?.content?.parts?.last.text
        .catchError((e) => print(e));
    return a;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(t),
    );
  }
}
