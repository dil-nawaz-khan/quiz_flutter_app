import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.0,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                final isCorrect = data['user_answer'] == data['correct_answer'];
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10.0,
                  children: [
                    Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: TextStyle(
                        color: isCorrect ? Colors.white : Colors.red,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            data['question'] as String,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            data['user_answer'] as String,
                            style: TextStyle(color: Colors.white60),
                          ),
                          Text(
                            data['correct_answer'] as String,
                            style: TextStyle(color: Colors.blueAccent),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
        ),
      ),
    );
  }
}
