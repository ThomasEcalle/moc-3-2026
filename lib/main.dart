import 'package:flutter/material.dart';
import 'package:moc3_20/exercises/a_exercise.dart';
import 'package:moc3_20/exercises/b_exercise.dart';
import 'package:moc3_20/exercises/c_exercise.dart';
import 'package:moc3_20/home.dart';
import 'package:moc3_20/layouts/layout_screen.dart';
import 'package:moc3_20/lists/lists_screen.dart';
import 'package:moc3_20/networks_call/webservices_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WebServicesScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
