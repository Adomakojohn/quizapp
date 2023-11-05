import 'package:flutter/material.dart';
import 'package:quizapp/screens/bottom_nav_bar.dart';
import 'package:quizapp/screens/home_screen.dart';
import 'package:quizapp/screens/quiz_page.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/quizpage' :(context) => const QuizPage(),
        'homepage':(context) => const HomePage()
      },
      debugShowCheckedModeBanner: false,
      home:const  BottomNavBar(),
    );
  }
}