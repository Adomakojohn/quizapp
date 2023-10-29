import 'dart:math';

import 'package:flutter/material.dart';
import 'package:quizapp/screens/notification_screen.dart';
import 'package:fl_chart/fl_chart.dart';

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
      required this.questionsAnswered,
      required this.child});

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
            padding: const EdgeInsets.all(13),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.access_time_outlined,
                  size: 30,
                ),
                Text(
                  widget.subjectName,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                Text(
                  widget.topicName,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.w500),
                ),
                Container(
                  child: widget.child,
                ),
                Text(
                  widget.questionsAnswered,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w400),
                )
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

class AnalyticsDets extends StatefulWidget {
  const AnalyticsDets({super.key});

  @override
  State<AnalyticsDets> createState() => _AnalyticsDetsState();
}

class _AnalyticsDetsState extends State<AnalyticsDets> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          alignment: Alignment.center,
          height: 140,
          width: 200,
          color: Colors.black,
          child: LineChart(
            LineChartData(
              gridData: const FlGridData(
                show: true,
                drawHorizontalLine: false,
                drawVerticalLine: false,
              ),
              minX: 3,
              maxX: 9,
              minY: 1,
              maxY: 12,
              lineBarsData: [
                LineChartBarData(
                  isCurved: true,
                  barWidth: 3,
                  dotData: const FlDotData(show: false),
                  gradient: const LinearGradient(
                    colors: [
                      Colors.blue,
                      Colors.green,
                    ],
                  ),
                  belowBarData: BarAreaData(
                    show: true,
                  ),
                  spots: const [
                    FlSpot(0, 1),
                    FlSpot(2, 7),
                    FlSpot(4, 2),
                    FlSpot(6, 9),
                    FlSpot(9, 3),
                    FlSpot(10, 13),
                    FlSpot(13, 2),
                    FlSpot(14, 15),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LeaderBoardProfile extends StatefulWidget {
  final  String imagePath;
  final String nameTitle;
  final String subtitle;
  const LeaderBoardProfile({super.key , required this.imagePath, required this.nameTitle , required this.subtitle});

  @override
  State<LeaderBoardProfile> createState() => _LeaderBoardProfileState();
}

class _LeaderBoardProfileState extends State<LeaderBoardProfile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: const Icon(Icons.arrow_forward_ios_outlined),
      contentPadding: const EdgeInsets.all(10),
      title: Text( widget.nameTitle, style: const TextStyle(fontSize: 20 , fontWeight: FontWeight.w500),),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: AssetImage(widget.imagePath),
      ),
      subtitle: Text(widget.subtitle , style: const TextStyle(fontSize: 19 , fontWeight: FontWeight.w400, ),),
    );
  }
}
