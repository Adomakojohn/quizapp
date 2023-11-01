import 'package:flutter/material.dart';
import 'package:quizapp/screens/home_screen.dart';


class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final List _pages = [const HomePage(),Container(),Container(),];
  int _selectedIndex = 0;
  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        backgroundColor: Colors.grey.shade300,
        type: BottomNavigationBarType.fixed,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home , size: 40,),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                "Assets/icons/bar-chart.png",
                width: 35,
                height: 35,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Image.asset(
                "Assets/icons/not1.png",
                width: 35,
                height: 35,
              ),
              label: ""),
        ],
      ),
    );
  }
}
