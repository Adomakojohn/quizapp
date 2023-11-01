import 'package:flutter/material.dart';

class YourQuizModel extends StatefulWidget {
  final String subjectName;
  final String answeredQuestion;
  final String questions;
  final double progressValue;
  const YourQuizModel(
      {super.key,
      required this.subjectName,
      required this.answeredQuestion,
      required this.questions,
      required this.progressValue});

  @override
  State<YourQuizModel> createState() => _YourQuizModelState();
}

class _YourQuizModelState extends State<YourQuizModel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 140,
        width: 220,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.av_timer_rounded ,color: Colors.white,),
              Text(
                widget.subjectName,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                widget.answeredQuestion,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                ),
              ),
              LinearProgressIndicator(
                value: widget.progressValue,
                color: Colors.deepOrangeAccent,
              ),
              Text(
                widget.questions,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
