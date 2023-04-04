import 'package:counter/counter_page.dart';
import 'package:flutter/material.dart';
//import 'volume.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CounterPage(),
      //home: MyApp(),
    );
  }
}
