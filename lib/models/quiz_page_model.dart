import 'package:flutter/material.dart';

class QuizPageModel extends StatefulWidget {
  
   const QuizPageModel({super.key ,});

  @override
  State<QuizPageModel> createState() => _QuizPageModelState();
}

List<String> options = ["option 1" , "option 2"];

class _QuizPageModelState extends State<QuizPageModel> {

  String currrentOption = options[0];

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
          Radio(value: options[1], groupValue: currrentOption, onChanged: (value) {
            setState(() {
              currrentOption = value.toString();
            });
          },),
          Text("the option", style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500),)
          ],
        ),
      ),
    );
  }
}