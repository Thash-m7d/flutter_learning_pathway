import 'package:flutter/material.dart';

class Quote extends StatelessWidget {
  final String? quoteText;

  Quote(this.quoteText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 15, right: 15, bottom: 25),
      child: Text(
        quoteText as String,
        style: TextStyle(color: Color.fromARGB(255, 255, 0, 183), fontSize: 30),
        textAlign: TextAlign.center,
      ),
    );
  }
}
