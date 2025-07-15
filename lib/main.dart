import 'package:flutter/material.dart';
import 'pages/home_page/home_page.dart';
import 'pages/station_list_page/station_list_page.dart';
import 'pages/seat_page/seat_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}