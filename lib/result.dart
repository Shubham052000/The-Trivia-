import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  String get resultPhrase {
    String resultText;
    if (resultScore < 5) {
      resultText = "You Know nothing, Jon Snow\nScore: $resultScore";
    } else if (resultScore < 8) {
      resultText = "Good & Keep it up\nScore: $resultScore";
    } else if (resultScore < 9) {
      resultText =
          "You were so close to the perfect score\nF\nScore: $resultScore";
    } else {
      resultText = "You Scored 10 on 10\nYou are the real G";
    }
    return resultText;
  }

  Result(this.resultScore, this.resetHandler);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              "Reset Trivia!!!",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
