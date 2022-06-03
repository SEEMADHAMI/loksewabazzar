import 'package:flutter/material.dart';
import 'package:loksewa/screens/courseScreen.dart';
import 'package:loksewa/screens/examScreen.dart';
import 'package:loksewa/screens/homescreen.dart';
import 'package:loksewa/screens/infoScreen.dart';
import 'package:loksewa/screens/profileScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  final screens = [
    const CourseContent(),
    const InfoScreen(),
    const HomeScreen(),
    const ExamsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: IndexedStack(
      //   index: currentIndex,
      //   children: screens,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        selectedItemColor: const Color.fromARGB(255, 29, 74, 74),
        unselectedItemColor: const Color.fromARGB(255, 75, 157, 168),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            label: 'Info',
            icon: Icon(Icons.info),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.read_more),
            label: 'Exams',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: screens.elementAt(currentIndex),
    );
  }
}
