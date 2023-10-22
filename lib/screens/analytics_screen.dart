import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quizapp/models/category_model.dart';
import 'package:quizapp/screens/home_screen.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            "Analytics",
            style: TextStyle(color: Colors.black, fontSize: 28),
          )),
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "All Platform Progress",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
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
                  child: PieChart(
                    swapAnimationCurve: Curves.easeInQuad,
                    swapAnimationDuration: const Duration(milliseconds: 690),
                    PieChartData(
                        centerSpaceRadius: 5,
                        sectionsSpace: 2,
                        borderData: FlBorderData(show: true),
                        sections: [
                          PieChartSectionData(
                              value: 20, color: Colors.green, radius: 65),
                          PieChartSectionData(
                              value: 70, color: Colors.blueGrey, radius: 75),
                          PieChartSectionData(
                            value: 10,
                            color: Colors.red,
                            radius: 59,
                            showTitle: true,
                            title: "hello",
                          ),
                        ]),
                  ),
                ),
              ),
            ),
            Expanded(
                child: GridView.builder(itemCount: 3,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, 
                  childAspectRatio: MediaQuery.of(context).size.width /
                          (MediaQuery.of(context).size.height / 2.4),
                  ),
              itemBuilder: (context, index) {
                return const AnalyticsDets();
              },
            ))
          ],
        ));
  }
}
