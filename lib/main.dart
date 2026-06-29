import 'package:flutter/material.dart';
import 'package:moc3_20/navigation/navigation_screen.dart';

import 'navigation/screen_b.dart';
import 'navigation/screen_c.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: NavigationScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            fontSize: 20,
            color: Colors.blue,
          ),
        ),
      ),
      routes: {
        '/': (context) => NavigationScreen(),
        ScreenB.routeName: (context) => ScreenB(),
      },
      onGenerateRoute: (settings) {
        Widget content = const SizedBox();

        switch (settings.name) {
          case ScreenC.routeName:
            final argument = settings.arguments;
            if (argument is String) {
              content = ScreenC(id: argument);
            }
            break;
        }

        return MaterialPageRoute(builder: (context) => content);
      },
    );
  }
}












