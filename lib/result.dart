import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 85) {
      resultText = 'You don\'t know me';
    } else if (resultScore <= 90) {
      resultText = 'You know me a little bit';
    } else if (resultScore <= 95) {
      resultText = 'You are my Friend';
    } else {
      resultText = 'You are my Best Friend!!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            onPressed: resetHandler,
            child: Text(
              'Retry!',
              style: TextStyle(fontSize: 22),
            ),
            textColor: Colors.black,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}
