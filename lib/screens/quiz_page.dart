import 'package:flutter/material.dart';
import 'package:quizapp/models/quiz_page_model.dart';

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
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
                  const SizedBox(height: 20,),
                  SizedBox(
                     height: 418, width: double.infinity,
                    child: ListView.builder( physics:const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index) => const QuizPageModel(
                        
                      ),),)
                ],
              ),
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
                  GestureDetector(
                     child: Container( alignment: Alignment.center,
                      height: 50,
                      width: 120,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border(bottom: BorderSide(color: Colors.grey),
                        right: BorderSide(color: Colors.grey),
                        left: BorderSide(color: Colors.grey),
                        top: BorderSide(color: Colors.grey)
                        )
                      ),
                      child:const Text("Back" , style: TextStyle(color: Colors.grey, fontSize: 20),),
                     ),
                   ),
                   GestureDetector(
                     child: Container( alignment: Alignment.center,
                      height: 50,
                      width: 120,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border(bottom: BorderSide(color: Colors.blue),
                        right: BorderSide(color: Colors.blue),
                        left: BorderSide(color: Colors.blue),
                        top: BorderSide(color: Colors.blue)
                        )
                      ),
                      child:const Text("Submit" , style: TextStyle(color: Colors.blue , fontSize: 20),),
                     ),
                   )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
