import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(
      {@required this.question,
      @required this.questionIndex,
      @required this.answerQuestion});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          question[questionIndex]['questionText'],
        ),
        ...(question[questionIndex]['answer'] as List<Map<String,Object>>).map((answer) {
          return Answer(selectHandler: () => answerQuestion(answer['score']), answerText: answer['Text']);
        }).toList()
      ],
    );
  }
}
