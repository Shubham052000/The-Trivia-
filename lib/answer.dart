import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectedOption;
  final String answerText;

  Answer(this.selectedOption, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
        child: Text(
          answerText,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        color: Colors.blue,
        onPressed: selectedOption,
      ),
    );
  }
}
