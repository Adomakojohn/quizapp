import 'package:flutter/material.dart';

class QuizPageModel extends StatefulWidget {
  const QuizPageModel({super.key});

  @override
  State<QuizPageModel> createState() => _QuizPageModelState();
}

class _QuizPageModelState extends State<QuizPageModel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(8.0),
      child: Container(
        height: 90,width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(20),),
          border:Border(
            bottom: BorderSide(color: Colors.grey),
            top: BorderSide(color: Colors.grey),
            right: BorderSide(color: Colors.grey),
            left: BorderSide(color: Colors.grey)
          ),
        ),
        child: Row(
          children: [
          Radio(value: 1, groupValue: 2, onChanged: (value) {
            
          },),
          Text("the option", style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500),)
          ],
        ),
      ),
    );
  }
}