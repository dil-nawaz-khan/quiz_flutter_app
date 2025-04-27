import 'package:flutter/material.dart';
import 'package:quiz_flutter_app/data/questions.dart';
import 'package:quiz_flutter_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.chosenAnswers,
    required this.restartQuiz,
  });

  final List<String> chosenAnswers;
  final void Function() restartQuiz;

  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummary();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions =
        summaryData.where((data) {
          return data['correct_answer'] == data['user_answer'];
        }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly!',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30.0),
            QuestionSummary(summaryData),
            SizedBox(height: 30.0),

            TextButton.icon(
              onPressed: () {
                restartQuiz();
              },
              label: Text('Restart Quiz!', style: TextStyle(fontSize: 18.0)),
              icon: Icon(Icons.restart_alt_outlined),
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                iconSize: 22.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
