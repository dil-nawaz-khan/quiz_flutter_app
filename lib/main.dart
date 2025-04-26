import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          spacing: 20.0,
          children: [
            SizedBox(height: 130.0),
            Image.asset('assets/images/quiz-logo.png', width: 280.0),
            SizedBox(height: 20.0),
            Text(
              'Learn Flutter the fun way!',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                side: BorderSide(color: Colors.white60),
                textStyle: TextStyle(fontSize: 16.0),
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
              ),
              onPressed: () {},
              //   style: ButtonStyle(,
              child: Text('Start Quiz'),
            ),
          ],
        ),
      ),
    ),
  ),
);
