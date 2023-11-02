import 'package:flutter/material.dart';

class LearningModel extends StatefulWidget {
  final String learningText;
  final String learningTextTwo;
  final String imagePath;
  const LearningModel({super.key, required this.learningText, required this.learningTextTwo , required this.imagePath});

  @override
  State<LearningModel> createState() => _LearningModelState();
}

class _LearningModelState extends State<LearningModel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          width: 240,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 90,
                width: 300,
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10)),
                    child: Image.asset(
                      widget.imagePath,
                      fit: BoxFit.fitWidth,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "Assets/icons/folder.png",
                    height: 22,
                    width: 22,
                  ),
                  Text(widget.learningText , style:const  TextStyle(fontSize: 19 , fontWeight: FontWeight.w500,),),
                ],
              ),
              Text(widget.learningTextTwo , style:const  TextStyle(fontSize: 17 , fontWeight: FontWeight.w500),),
            ],
          )),
    );
  }
}
