import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhase {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'You are pretty likeable!';
    } else if (resultScore <= 12) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are most excellent!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          resultPhase,
          style: TextStyle(fontSize: 36),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text(
            'Restart Quiz',
          ),
          textColor: Colors.blue,
          onPressed: resetHandler,
        )
      ]),
    );
  }
}
