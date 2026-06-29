import 'package:flutter/material.dart';

class BExercise extends StatefulWidget {
  const BExercise({super.key});

  @override
  State<BExercise> createState() => _BExerciseState();
}

class _BExerciseState extends State<BExercise> {
  bool _clicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyButton(color: _clicked ? Colors.orange : Colors.blue),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _clicked = !_clicked;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    this.color = Colors.blue,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      height: 100,
      width: 100,
      color: color,
    );
  }
}
