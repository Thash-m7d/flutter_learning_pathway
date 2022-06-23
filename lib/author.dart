import 'package:flutter/material.dart';

class Author extends StatelessWidget {
  final String? authorName;
  Author(this.authorName);
  @override
  Widget build(BuildContext context) {
    return Text(
      '~$authorName',
      textAlign: TextAlign.right,
    );
  }
}
