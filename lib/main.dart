import 'package:flutter/material.dart';
import 'package:trivia/result.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(Trivia());

class Trivia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TriviaState();
  }
}

class _TriviaState extends State<Trivia> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      "questionText": "What is 'Flutter'?",
      "answers": [
        {"text": "Facebook's New Bitcoin", "score": 0},
        {"text": "Google's New framework to develop apps", "score": 1},
        {"text": "A New Butterfly Species", "score": 0}
      ],
    },
    {
      "questionText": "What is 'Android'?",
      "answers": [
        {"text": "Andre Roblowski", "score": 0},
        {"text": "Humanoid Alien Robots", "score": 0},
        {"text": "An OS built for Smartphones", "score": 1},
      ],
    },
    {
      "questionText": "What is the current stable version of 'Android'?",
      "answers": [
        {"text": "Android 9.0 (PIE)", "score": 1},
        {"text": "Android 10.0 (Queijadinha)", "score": 0},
        {"text": "Android 11.0 (RUMBALL)", "score": 0},
      ],
    },
    {
      "questionText": "'Flutter' uses which one of these as it's programming language?",
      "answers": [
        {"text": "C#", "score": 0},
        {"text": "Dart", "score": 1},
        {"text": "Java", "score": 0},
      ],
    },
    {
      "questionText": "Which type of programming language is 'Dart'?",
      "answers": [
        {"text": "POP (Procedural Language)", "score": 0},
        {"text": "Query Language", "score": 0},
        {"text": "OOP (Object Oriented Language)", "score": 1},
      ],
    },
    {
      "questionText": "Flutter and Dart are being backed-up by which tech-giant?",
      "answers": [
        {"text": "Google", "score": 1},
        {"text": "Microsoft", "score": 0},
        {"text": "Amazon", "score": 0},
      ],
    },
    {
      "questionText": "What's so special about Flutter?",
      "answers": [
        {"text": "Developers can build Multi-Platform apps with single codebase", "score": 1},
        {"text": "FLutter developers are granted with X-ray Vision eyes", "score": 0},
        {"text": "It's 69 years old", "score": 0},
      ],
    },
    {
      "questionText": "What is the name of next Big OS from Google?",
      "answers": [
        {"text": "Sailfish OS", "score": 0},
        {"text": "Puffin OS", "score": 0},
        {"text": "Fuchsia OS", "score": 1},
      ],
    },
    {
      "questionText": "Flutter is being liked by:",
      "answers": [
        {"text": "Old-School native android developers", "score": 0},
        {"text": "New-Bie app developers", "score": 0},
        {"text": "Every app developer", "score": 1},
      ],
    },
    {
      "questionText": "\"The Trivia!!!\" has been developed by:",
      "answers": [
        {"text": "Mr. Rick Sanchez", "score": 0},
        {"text": "Mr. Shubham Satyawali", "score": 1},
        {"text": "Mr. Peter Griffin", "score": 0},
      ],
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print("Answer Chosen");
    if (_questionIndex < _questions.length) {
      print("Have More Questions");
    } else {
      print("Question list exhausted");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("The Trivia!!!"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, resetQuiz),
      ),
    );
  }
}
