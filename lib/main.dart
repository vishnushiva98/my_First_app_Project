import 'package:cartrack_application/HomePage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
