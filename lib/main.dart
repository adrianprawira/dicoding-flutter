import 'package:dicoding_submission_flutter_beginner/screens/home/home_screen.dart';
import 'package:dicoding_submission_flutter_beginner/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_submission_flutter_beginner/constants.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dicoding Submission Flutter',
      theme: ThemeData(
        scaffoldBackgroundColor: aBackgroundColor,
        primaryColor: aPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: aTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: MainPage(),
    );
  }

class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: index,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black54,
        backgroundColor: Color(0xEB00574B),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',),
        ],
        onTap: (int index) => setState(() => this.index = index),
      ),
      body: buildPages(),
    );

    Widget buildPages() {
    switch (index) {
    case 0:
    return HomeScreen();
    case 1:
    return ProfileScreen();
    default:
    return Container();
    }
    }
}