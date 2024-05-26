import 'dart:async';
import 'package:firstapp/HomeScreen.dart';
import 'package:flutter/material.dart';

class StartingScreen extends StatefulWidget {
  const StartingScreen({super.key});
  @override
  _StartingScreenState createState() => _StartingScreenState();
}

class _StartingScreenState extends State<StartingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Homescreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set your desired background color
      body: Center(
        child: Image.asset(
          'lib/assets/logo.png', // Replace 'assets/logo.png' with your logo file path
          width: 200, // Adjust the width of your logo
          height: 200, // Adjust the height of your logo
        ),
      ),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: Center(
        child: Text('This is the main screen'),
      ),
    );
  }
}
