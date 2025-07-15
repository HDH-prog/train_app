import 'package:flutter/material.dart';
import 'widgets/selected_station.dart';
import 'widgets/is_selected.dart';
import 'widgets/seat_grid.dart';

class SeatPage extends StatelessWidget {
  const SeatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('좌석 선택'),
        centerTitle: true,
        leading: const BackButton(),
      ),
      body: Column(
        children: [
          const SelectedStationWidget(), 
          const IsSelectedGuideWidget(),
          const Divider(height: 1),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SeatGrid(), 
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            margin: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                // 예매 버튼 동작
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                '예매 하기',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
