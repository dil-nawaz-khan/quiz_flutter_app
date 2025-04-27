import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Opacity(
          //   opacity: .1,
          //   child: Image.asset('assets/images/quiz-logo.png', width: 300.0),
          // ), //performance issue
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300.0,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          SizedBox(height: 80.0),
          Text(
            'Learn Flutter the fun way!',
            style: TextStyle(color: Colors.white, fontSize: 24.0),
          ),
          SizedBox(height: 30.0),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            label: Text('Start Quiz!'),
            icon: Icon(Icons.arrow_right_alt),
          ),
        ],
      ),
    );
  }
}
