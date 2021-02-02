import 'package:flutter/material.dart';
import 'package:quiz/widgets/quiz/quiz_body.dart';

class Quiz extends StatelessWidget {
  final String subjectName;
  Quiz({this.subjectName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: QuizBody(subjectName: subjectName,)
    );
  }
}
