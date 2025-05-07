import 'package:flutter/material.dart';
import 'package:vincent_toolbox/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '诡锋工具箱',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.pink[50],
      ),
      home: const Home(),
    );
  }
}
