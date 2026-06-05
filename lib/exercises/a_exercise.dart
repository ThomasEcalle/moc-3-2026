import 'package:flutter/material.dart';

class AExercise extends StatelessWidget {
  const AExercise({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Clicked !');
      },
      child: Container(
        height: 100,
        width: 100,
        color: Colors.red,
      ),
    );
  }
}
