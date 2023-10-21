import 'package:flutter/material.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child:Text("Analytics", style: TextStyle(color: Colors.black, fontSize: 28),)),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body:Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           const SizedBox(height: 20,),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("All Platform Progress", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect( borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 220,
                width:385,
                color: Colors.grey.shade400,
              ),
            ),
          )
        ],
      )
    );
  }
}