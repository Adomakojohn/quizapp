import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:quizapp/models/learning_model.dart';
import 'package:quizapp/models/sections_model.dart';
import 'package:quizapp/models/your_quiz_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<LearningModel> learningModel = [
   const LearningModel(learningText: "Interview most asked", learningTextTwo: "questions", imagePath:"Assets/images/exam.jpg"),
   const LearningModel(learningText: "Data Structures", learningTextTwo: "and Algorithm questions", imagePath:"Assets/images/mac.jpg"),
   const LearningModel(learningText: "Introduction to web", learningTextTwo: " development questions", imagePath:"Assets/images/exam2.jpg"),
  ];

  final List <YourQuizModel> yourQuizModel=[
    const YourQuizModel(subjectName: "Physics", answeredQuestion: "67 questions answered", questions:"120 questions", progressValue: 0.67),
    const YourQuizModel(subjectName: "DSA(Javascript)", answeredQuestion: "89 questions answered", questions:"200 questions", progressValue: 0.46),
    const YourQuizModel(subjectName: "Calculus 2", answeredQuestion: "67 questions answered", questions:"120 questions", progressValue: 0.67),
  ];
  final List<SectionsModel> sectionsModel =[
    const SectionsModel(title: "Data Structures and Algorithms", subtitle:"Learn data structures and algorithms"),
     const SectionsModel(title: "Web development", subtitle:"Navigate your way through the world of web development with html , css and javascript"),
      const SectionsModel(title: "Calculus I & II", subtitle:"Start your journey in the math world"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("Assets/images/Pf5.jpg"),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 56,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(11),
                        color: Colors.transparent,
                        border: Border(
                            bottom: BorderSide(color: Colors.grey.shade500),
                            top: BorderSide(color: Colors.grey.shade500),
                            right: BorderSide(color: Colors.grey.shade500),
                            left: BorderSide(color: Colors.grey.shade500)),
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            "Assets/images/fire.png",
                            width: 30,
                            height: 30,
                          ),
                          const Text(
                            "3",
                            style: TextStyle(fontSize: 24),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                const Text(
                  "Hi , Reece",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "Let's learn something new today !",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey.shade700,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  child: Container(
                    height: 120,
                    width: double.infinity,
                    color: Colors.blue.shade700,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircularPercentIndicator(
                          radius: 30,
                          center: const Text("25%"),
                          percent: 0.25,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Complete the daily quiz",
                              style:
                                  TextStyle(fontSize: 22, color: Colors.white),
                            ),
                            Text(
                              "5 out of 20 questions answered",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Divider(
                  indent: 1,
                  color: Colors.grey.shade400,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Your quizes",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "view all",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue),
                    ),
                  ],
                ),
                SizedBox(
                  height: 140,
                  width: double.infinity,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return YourQuizModel(
                        subjectName:yourQuizModel[index].subjectName,
                        answeredQuestion: yourQuizModel[index].answeredQuestion,
                        questions: yourQuizModel[index].questions,
                        progressValue: yourQuizModel[index].progressValue,
                      );
                    },
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Learning",
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "view all",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue),
                    ),
                  ],
                ),
                SizedBox(
                  height: 170, width: double.infinity,
                  child: ListView.builder( 
                    physics: const BouncingScrollPhysics(
                      decelerationRate: ScrollDecelerationRate.fast
                    ),
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return  LearningModel(
                        learningText: learningModel[index].learningText,
                        learningTextTwo: learningModel[index].learningTextTwo,
                        imagePath:learningModel[index].imagePath,
                      );
                    },
                  ),
                ),
                const Text("Sections" , style: TextStyle(fontSize: 19, letterSpacing: 2),),
               SizedBox(height: 300, width: double.infinity,
                 child: ListView.builder( physics: const BouncingScrollPhysics(),
                  itemCount: 3,
                  itemBuilder :(context, index) {
                    return SectionsModel(title:sectionsModel[index].title, subtitle:sectionsModel[index].subtitle);
                  },
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
