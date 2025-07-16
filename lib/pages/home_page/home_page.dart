import 'package:flutter/material.dart';
import 'widgets/build_station_name.dart';
import 'widgets/select_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String? departureStation;
  String? arrivalStation;

  void selectStation(bool isDeparture) async {
    final result = await Navigator.pushNamed(
      context,
      '/station',
      arguments: {
        'isDeparture': isDeparture,
        'exclude': isDeparture ? arrivalStation : departureStation,
      },
    ) as String?;

    if (result != null) {
      setState(() {
        if (isDeparture) {
          departureStation = result;
        } else {
          arrivalStation = result;
        }
      });
    }
  }

  void onSeatSelectPressed() {
    if (departureStation != null && arrivalStation != null) {
      Navigator.pushNamed(
        context,
        '/seat',
        arguments: {
          'departure': departureStation!,
          'arrival': arrivalStation!,
        },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('출발역과 도착역을 모두 선택해주세요')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('기차 예매'),
      ),
      body: Container(
        color: Colors.grey[200],
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StationSelectBox(
              departure: departureStation ?? '선택',
              arrival: arrivalStation ?? '선택',
              onDepartureTap: () => selectStation(true),
              onArrivalTap: () => selectStation(false),
            ),
            const SizedBox(height: 40),
            SelectButton(
              text: '좌석 선택',
              onPressed: onSeatSelectPressed,
            ),
          ],
        ),
      ),
    );
  }
}
