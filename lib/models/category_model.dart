import 'package:flutter/material.dart';

class CategoryTypes extends StatefulWidget {
  final String categoryText;
  final String imagePath;
  const CategoryTypes({super.key ,required this.imagePath, required this.categoryText});

  @override
  State<CategoryTypes> createState() => _CategoryTypesState();
}

class _CategoryTypesState extends State<CategoryTypes> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(borderRadius: BorderRadius.circular(24),
        child: Container(
          height: 45,
          width: 117,
          color:Colors.grey.shade300,
          child:  Row(
            children: [
              Image.asset(widget.imagePath , width: 30, height: 30,),
              Text(widget.categoryText, style:const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),)
            ],
          ),
        ),
      ),
    );
  }
}



class RecentlyLearnt extends StatefulWidget {
  const RecentlyLearnt({super.key});

  @override
  State<RecentlyLearnt> createState() => _RecentlyLearntState();
}

class _RecentlyLearntState extends State<RecentlyLearnt> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: ClipRRect( borderRadius: BorderRadius.circular(30),
        child: Container(
          height: 100,
          width: 350,
          color: Colors.black45,
        ),
      ),
    );
  }
}


class Topics extends StatefulWidget {
  final String ImagePath;
  final String topicTitle;
  const Topics({super.key , required this.ImagePath, required this.topicTitle});

  @override
  State<Topics> createState() => _TopicsState();
}

class _TopicsState extends State<Topics> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7),
      child: ClipRRect( borderRadius: BorderRadius.circular(30),
        child: Container(
          height: 360,
          width: 200,
          color: Colors.black45,
          child: Column(
            children: [
              Image.asset(widget.ImagePath),
              Text(widget.topicTitle)
            ],
          ),
        ),
      ),
    );
  }
}
