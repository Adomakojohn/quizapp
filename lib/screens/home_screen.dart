// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:quizapp/models/category_model.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<RecentlyLearnt> recentlyOpened = [
    RecentlyLearnt(
        subjectName: "Maths",
        topicName: "150 questions answered",
        questionsAnswered: "1000 questions",
        child: LinearProgressIndicator(
          backgroundColor: Colors.black,
          color: Colors.green,
          value: 20 / 100,
          minHeight: 7,
          borderRadius: BorderRadius.circular(22),
        )),
    RecentlyLearnt(
        subjectName: "DSA",
        topicName: "300 questions answered",
        questionsAnswered: "600 questions",
        child: LinearProgressIndicator(
          backgroundColor: Colors.black,
          color: Colors.green,
          value: 50 / 100,
          minHeight: 7,
          borderRadius: BorderRadius.circular(22),
        )),
    RecentlyLearnt(
        subjectName: "General Knowledge",
        topicName: "170 questions answered",
        questionsAnswered: "900 questions",
        child: LinearProgressIndicator(
          backgroundColor: Colors.black,
          color: Colors.green,
          value: 19 / 100,
          minHeight: 7,
          borderRadius: BorderRadius.circular(22),
        )),
  ];
  List<Topics> topic = [
    const Topics(imagePath: "Assets/icons/science.png", topicTitle: "Physics"),
    const Topics(
        imagePath: "Assets/icons/geometry.png", topicTitle: "Geometry"),
    const Topics(
        imagePath: "Assets/icons/chemistry.png", topicTitle: "Chemistry"),
    const Topics(
        imagePath: "Assets/icons/data-science.png", topicTitle: "Data Science"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Hello , Ryan !",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              Text(
                "Let's learn something today",
                style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
              ),
              const SizedBox(
                height: 28,
              ),
              Container(
                alignment: Alignment.center,
                height: 45,
                width: double.maxFinite,
                child: TextField(
                    decoration: InputDecoration(
                  suffixIcon: const Icon(Icons.mic_rounded),
                  prefixIcon: const Icon(Icons.search_rounded),
                  hintText: "Search",
                  hintStyle: const TextStyle(fontSize: 22),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                )),
              ),
              const SizedBox(
                height: 18,
              ),
              
              
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recently opened",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Container(
                height: 140,
                width: double.infinity,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return RecentlyLearnt(
                        subjectName: recentlyOpened[index].subjectName,
                        topicName: recentlyOpened[index].topicName,
                        questionsAnswered:
                            recentlyOpened[index].questionsAnswered,
                        child: recentlyOpened[index].child);
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Topics",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "View All",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 1.8)),
                  itemCount: 4,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Topics(
                      imagePath: topic[index].imagePath,
                      topicTitle: topic[index].topicTitle,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
