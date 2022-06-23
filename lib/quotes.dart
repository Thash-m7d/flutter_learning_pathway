import 'package:flutter/material.dart';
import './author.dart';
import './quote.dart';

class Quotes extends StatelessWidget {
  final String? quoteText;
  final String? authorName;
  Quotes(this.quoteText, this.authorName);
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Quote(quoteText),
      Author(authorName),
    ]);
  }
}
