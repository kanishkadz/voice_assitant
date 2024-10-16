import 'package:flutter/material.dart';
import 'package:allen/home_page.dart';
import 'package:allen/pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wambi',
      theme: ThemeData.light(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: Pallete.whiteColor,
        appBarTheme: AppBarTheme(
          backgroundColor: Pallete.whiteColor,
          foregroundColor: Colors.black, // Optional: Set text color to ensure readability
        ),
      ),
      home: const HomePage(),
    );
  }
}
