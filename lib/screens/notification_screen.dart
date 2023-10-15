import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body:  SafeArea(
        child: Column(
          children: [
            Image.asset("Assets/images/nonot.jpg" ,width: 600, height: 600,),
            const Text("No notifications here !!" , style: TextStyle(fontSize: 32,fontWeight: FontWeight.w500),),
          ],
        ),
      )
    );
  }
}