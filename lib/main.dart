import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

//For branch test

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
    //test
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'Whats your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'Whats your favorite animal?',
      'answers': ['Sheep', 'Dog', 'Cat', 'Whale'],
    },
    {
      'questionText': 'Whats your favorite food?',
      'answers': ['Beans', 'Banana', 'Apple', 'Pie'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(),
      ),
    );
  }
}
