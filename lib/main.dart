import 'package:flutter/material.dart';
import 'presentation/screens/athlete_list_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Athlete App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AthleteScreen(),
    );
  }
}
