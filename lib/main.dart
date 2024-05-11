import 'package:cartrack_application/Section/SecondSection/SecondSection.dart';
import 'package:cartrack_application/Section/SectionOne/FirstSection.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'SpaceGrotesk'),
      // theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: FirstSectionHome(),
      // home: FirstSectionHome(),

      // ),

      routes: {
        '/secondhomepage': (context) => const SecondHomePage(),
      },
      // home: SecondHomePage(),
    );
  }
}
