import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Salut les MOC',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
