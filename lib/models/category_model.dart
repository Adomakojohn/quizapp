import 'package:flutter/material.dart';
import 'package:quizapp/screens/notification_screen.dart';

class CategoryTypes extends StatefulWidget {
  final String categoryText;
  final String imagePath;
  const CategoryTypes(
      {super.key, required this.imagePath, required this.categoryText});

  @override
  State<CategoryTypes> createState() => _CategoryTypesState();
}

class _CategoryTypesState extends State<CategoryTypes> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Container(
          height: 45,
          width: 117,
          color: Colors.white,
          child: Row(
            children: [
              Image.asset(
                widget.imagePath,
                width: 30,
                height: 30,
              ),
              Text(
                widget.categoryText,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RecentlyLearnt extends StatefulWidget {
  final String subjectName;
  final String topicName;
  final String questionsAnswered;
  final child;
  const RecentlyLearnt(
      {super.key,
      required this.subjectName,
      required this.topicName,
      required this.questionsAnswered, required this.child});

  @override
  State<RecentlyLearnt> createState() => _RecentlyLearntState();
}

class _RecentlyLearntState extends State<RecentlyLearnt> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          height: 100,
          width: 350,
          color: Colors.white,
         child: Padding(
           padding: const EdgeInsets.all(16),
           child: Column( mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
             const  Icon(Icons.timer_outlined, size: 30,),
              Text(widget.subjectName),
              Text(widget.topicName),
              Container(
                child: widget.child,
              ),
              Text(widget.questionsAnswered)
            ],
           ),
         ),
        ),
      ),
    );
  }
}

class Topics extends StatefulWidget {
  final String imagePath;
  final String topicTitle;
  const Topics({super.key, required this.imagePath, required this.topicTitle});

  @override
  State<Topics> createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: GestureDetector(
        onTap: () {
          const NotificationPage();
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            height: 360,
            width: 200,
            color: Colors.white,
            child: Column(
              children: [
                Image.asset(
                  widget.imagePath,
                  width: 160,
                  height: 160,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  widget.topicTitle,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
