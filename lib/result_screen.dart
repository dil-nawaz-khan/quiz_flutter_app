import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered X out of Y questions correctly!'),
            SizedBox(height: 30.0),
            Text('List of answers and questions'),
            SizedBox(height: 30.0),
            TextButton(onPressed: () {}, child: Text('Restart Quiz!')),
          ],
        ),
      ),
    );
  }
}
