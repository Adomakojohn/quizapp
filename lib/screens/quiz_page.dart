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
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Question 1: select your answer",
                  style: TextStyle(
                    color: Colors.blueGrey.shade500,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "what is the largest planet in our",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  "solar system ?",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                  ),
                ),

              ],
            ),
            Container( alignment: Alignment.center,
              height: 85,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow:[
                  BoxShadow( offset: const Offset(-1.0, -3.0) , blurRadius: 2 ,spreadRadius: 1 , color: Colors.grey.shade300),
                ],
              ),
              child:  Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: () {
                    
                  }, child:Text("Back")),
                   ElevatedButton(onPressed: () {
                    
                  }, child:Text("Submit")),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
