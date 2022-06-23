import 'package:flutter/material.dart';

class QuoteControl extends StatelessWidget {
  final Function nextQuote;
  final int quoteLength;
  QuoteControl(this.nextQuote, this.quoteLength);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => nextQuote(quoteLength),
      child: Text('Generate Random Quote'),
    );
  }
}
