import 'package:flutter/material.dart';
import 'package:quizapp/ui/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      home: HomeScreen(),
      
    );
  }
}
