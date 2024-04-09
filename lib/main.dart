import 'package:first_project/pages/history.dart';
import 'package:first_project/pages/home.dart';
import 'package:first_project/pages/profile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> pages = [
    const HomePage(),
    const HistoryPage(),
    const ProfilePage(),
  ];

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // color: Colors.grey,
      debugShowCheckedModeBanner: false,
      title: 'First Trading App',
      // theme: ThemeData.dark(),
      darkTheme: ThemeData(
        useMaterial3: true,
      ),

      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 35,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.history,
                size: 35,
              ),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: 35,
              ),
              label: 'Profile',
            ),
          ],
        ),
        body: pages[currentIndex],
      ),
    );
  }
}
