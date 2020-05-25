import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
    throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  final _question = [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': [
        {'Text': 'Black', 'score': 10},
        {'Text': 'Red', 'score': 5},
        {'Text': 'Green', 'score': 3},
        {'Text': 'White', 'score': 1}
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': [
        {'Text': 'Rabbit', 'score': 10},
        {'Text': 'Snake', 'score': 5},
        {'Text': 'Elephant', 'score': 3},
        {'Text': 'Lion', 'score': 1}
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answer': [
        {'Text': 'Max', 'score': 10},
        {'Text': 'Maggie', 'score': 5},
        {'Text': 'Jane', 'score': 3},
        {'Text': 'Carla', 'score': 1}
      ],
    },
  ];

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _question.length) {}
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                question: _question,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
