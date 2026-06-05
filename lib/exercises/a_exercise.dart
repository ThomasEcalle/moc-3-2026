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

class MyButton extends StatefulWidget {
  const MyButton({super.key});

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  bool _clicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        height: _clicked ? 120 : 100,
        width: _clicked ? 50 : 100,
        color: _clicked ? Colors.red : Colors.blue,
      ),
    );
  }

  void _onTap() {
    setState(() {
      _clicked = !_clicked;
    });
  }
}
