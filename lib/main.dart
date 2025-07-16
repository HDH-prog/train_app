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
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(builder: (_) => const HomePage());

          case '/station':
            final args = settings.arguments as Map<String, dynamic>;
            return MaterialPageRoute(
              builder: (_) => StationListPage(
                isDeparture: args['isDeparture'],
                exclude: args['exclude'],
              ),
            );

          case '/seat':
            final args = settings.arguments as Map<String, String>;
            return MaterialPageRoute(
              builder: (_) => const SeatPage(),
              settings: RouteSettings(arguments: args),
            );

          default:
            return null;
        }
      },
    );
  }
}
