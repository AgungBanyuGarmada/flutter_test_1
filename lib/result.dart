import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _resultScore;
  final Function _resetHandle;

  Result(this._resultScore, this._resetHandle);

  String get resultPhrase {
    var resultText;
    if (_resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (_resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else {
      resultText = 'You are ... strange?!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz!'),
            textColor: Colors.blue,
            onPressed: _resetHandle,
          ),
        ],
      ),
    );
  }
}
