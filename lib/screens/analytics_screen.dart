import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:quizapp/models/category_model.dart';

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
              Container(
                height: 430,
                width: 400,
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
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
                    color: Colors.grey.shade400,
                    child: Column(
                      children: [
                        ListTile(
                          trailing:
                              const Icon(Icons.arrow_forward_ios_outlined),
                          contentPadding: EdgeInsets.all(16),
                          title: Text("Adam Oxwell"),
                          leading: Column(
                            children: [
                              Container(
                                height: 95,
                                width: 95,
                                child: Image.asset(fit: BoxFit.contain,
                                  "Assets/images/nonot.jpg",
                                  
                                ),
                              )
                            ],
                          ),
                          subtitle: const Text("the sub title"),
                        ),
                        
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
