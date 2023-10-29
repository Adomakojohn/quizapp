// ignore_for_file: sized_box_for_whitespace

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/models/category_model.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  final List<LeaderBoardProfile> leaderBoardProfile = [
    const LeaderBoardProfile(
      imagePath: "Assets/images/Pf2.jpg",
      nameTitle: "Selina Sarpong",
      subtitle: "Score : 300,999",
    ),
    const LeaderBoardProfile(
      imagePath: "Assets/images/Pf3.jpg",
      nameTitle: "Mary White",
      subtitle: "Score : 299,867",
    ),
    const LeaderBoardProfile(
      imagePath: "Assets/images/Pf4.jpg",
      nameTitle: "Adam Oxwell",
      subtitle: "Score : 280,221",
    ),
    const LeaderBoardProfile(
      imagePath: "Assets/images/Pf5.jpg",
      nameTitle: "Chris Pink",
      subtitle: "Score : 199,999",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            "Analytics",
            style:
                TextStyle(color: Colors.black, fontSize: 28, letterSpacing: 2),
          )),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "All Platform Progress",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 225,
                    width: 385,
                    color: Colors.grey.shade400,
                    child: Stack(
                      alignment: Alignment.bottomRight,
                      children: [
                        Positioned(
                          child: PieChart(
                            swapAnimationCurve: Curves.easeInQuad,
                            swapAnimationDuration:
                                const Duration(milliseconds: 690),
                            PieChartData(
                                centerSpaceRadius: 5,
                                sectionsSpace: 2,
                                borderData: FlBorderData(show: true),
                                sections: [
                                  PieChartSectionData(
                                      value: 20,
                                      color: Colors.green,
                                      radius: 50),
                                  PieChartSectionData(
                                      value: 70,
                                      color: Colors.blueGrey,
                                      radius: 65),
                                  PieChartSectionData(
                                    value: 10,
                                    color: Colors.red,
                                    radius: 45,
                                    showTitle: true,
                                    title: "hello",
                                  ),
                                ]),
                          ),
                        ),
                        Positioned(
                            bottom: 10,
                            right: 20,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        color: Colors.blueGrey,
                                      ),
                                    ),
                                    const Text(
                                      "DSA",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        color: Colors.green,
                                      ),
                                    ),
                                    const Text(
                                      "Maths",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(2.0),
                                      child: Container(
                                        height: 20,
                                        width: 20,
                                        color: Colors.red,
                                      ),
                                    ),
                                    const Text(
                                      "Web dev",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 430,
                width: 400,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: MediaQuery.of(context).size.width /
                        (MediaQuery.of(context).size.height / 1.9),
                  ),
                  itemBuilder: (context, index) {
                    return const AnalyticsDets();
                  },
                ),
              ),
              const Text(
                "LeaderBoard",
                style: TextStyle(
                    fontSize: 24,
                    letterSpacing: 2,
                    fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 390,
                    width: double.infinity,
                    color: const Color.fromRGBO(189, 189, 189, 1),
                    child: Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: leaderBoardProfile.length,
                        itemBuilder: (context, index) {
                          return LeaderBoardProfile(
                            imagePath: leaderBoardProfile[index].imagePath,
                            nameTitle: leaderBoardProfile[index].nameTitle,
                            subtitle: leaderBoardProfile[index].subtitle,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
