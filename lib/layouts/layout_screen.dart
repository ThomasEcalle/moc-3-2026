import 'package:flutter/material.dart';
import 'package:moc3_20/layouts/red_circle.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final height = size.height;
    final width = size.width;

    return SafeArea(
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Colors.green,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      direction: Axis.horizontal,
                      children: List.generate(17, (index) => RedCircle(index: index)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: double.infinity,
                        color: Colors.blue,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RedCircle(index: 0),
                              RedCircle(index: 1),
                              const Spacer(),
                              RedCircle(index: 2),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(height: 100, width: 100, color: Colors.red),
                ),
                AnimatedPositioned(
                  duration: const Duration(seconds: 2),
                  curve: Curves.bounceInOut,
                  bottom: 20,
                  left: 200,
                  child: Container(height: 100, width: 100, color: Colors.yellow),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
