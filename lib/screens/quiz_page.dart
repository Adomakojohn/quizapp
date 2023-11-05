import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pushNamed(context, 'homepage'),
            child: const Icon(
          Icons.arrow_back_ios_rounded,
          color: Colors.black,
          size: 32,
        )),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: const SafeArea(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
