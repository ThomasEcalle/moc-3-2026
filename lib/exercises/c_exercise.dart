import 'package:flutter/material.dart';

class CExercise extends StatefulWidget {
  const CExercise({super.key});

  @override
  State<CExercise> createState() => _CExerciseState();
}

class _CExerciseState extends State<CExercise> {
  bool _clicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _clicked ? Colors.red : Colors.green,
      body: Center(
        child: MyButton(
          onTap: () {
            print('Coucou');
            setState(() {
              _clicked = !_clicked;
            });
          },
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        height: 100,
        width: 100,
        color: Colors.blue,
      ),
    );
  }
}



