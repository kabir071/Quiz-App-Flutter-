import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  void answerQuestion() {
    setState(() {
      questionIndex++;
    });

    print("Answer Chosen!");
    print(questionIndex);
  }

  var questions = [
    "How many dogs do I have?",
    "Which dog do I love most?",
    "What is my favourite colour?",
    "Who is your papa in COD?"
  ];

  var questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Kabir's Flutter App"),
          ),
          body: Column(
            children: [
              Text(questions.elementAt(questionIndex)),
              RaisedButton(
                child: Text("Answer 1"),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text("Answer 2"),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text("Answer 3"),
                onPressed: answerQuestion,
              )
            ],
          )),
    );
  }
}
