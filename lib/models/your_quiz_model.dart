import 'package:flutter/material.dart';

class YourQuizModel extends StatefulWidget {
  final String subjectName;
  final String answeredQuestion;
  final String questions;
  const YourQuizModel({
    super.key,
    required this.subjectName ,
    required this.answeredQuestion,
    required this.questions
  });

  @override
  State<YourQuizModel> createState() => _YourQuizModelState();
}

class _YourQuizModelState extends State<YourQuizModel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 160,
        width: 220,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(12),),
            child: Column( crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(widget.subjectName),
                Text(widget.answeredQuestion),
                const LinearProgressIndicator(),
                Text(widget.questions)
              ],
            ),
      ),
    );
  }
}
