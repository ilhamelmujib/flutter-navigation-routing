import 'package:flutter/material.dart';
import 'package:flutter_fundamental/another_screen.dart';
import 'package:flutter_fundamental/replacement_screen.dart';
import 'package:flutter_fundamental/return_data_screen.dart';
import 'package:flutter_fundamental/second_screen.dart';
import 'package:flutter_fundamental/second_screen_with_data.dart';
import 'another_screen2.dart';
import 'first_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/secondScreen': (context) => const SecondScreen(),
        '/secondScreenWithData': (context) => SecondScreenWithData(
            ModalRoute.of(context)?.settings.arguments as String),
        '/returnDataScreen': (context) => const ReturnDataScreen(),
        '/replacementScreen': (context) => const ReplacementScreen(),
        '/anotherScreen': (context) => const AnotherScreen(),
        '/anotherScreen2': (context) => const AnotherScreen2(),
      },
    );
  }
}
