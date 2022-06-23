// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import './quotes.dart';
import 'dart:math';
import './quotecontrol.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final quotes = const [
    {
      'quote':
          'In three words I can sum up everything I\'ve learned about life: it goes on.',
      'author': 'Rober Frost'
    },
    {
      'quote':
          'To live is the rarest thing in the world. Most people exist, that is all.',
      'author': 'Oscar Wilde'
    },
    {
      'quote':
          'It is better to be hated for what you are than to be loved for what you are not.',
      'author': 'Andre Gide'
    }
  ];
  var _quoteIndex = 0;
  void _nextQuote(quotelength) {
    setState(() {
      _quoteIndex = Random().nextInt(quotelength);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Quotes!'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Quotes(
                quotes[_quoteIndex]['quote'],
                quotes[_quoteIndex]['author'],
              ),
              QuoteControl(_nextQuote, quotes.length),
            ],
          )),
    );
  }
}
