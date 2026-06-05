import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Salut les MOC', style: Theme.of(context).textTheme.bodyLarge),
    );
  }
}
