import 'package:flutter/material.dart';
import 'package:samosa_app/screens/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Samosa App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        iconTheme: const IconThemeData(
          color: Colors.yellow,
        ),
        fontFamily: 'Poppins',
      ),
      home: const HomePage(),
    );
  }
}
