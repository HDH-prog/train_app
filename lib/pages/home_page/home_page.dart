import 'package:flutter/material.dart';
import 'widgets/build_station_name.dart';
import 'widgets/select_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            const StationSelectBox(),
            const SizedBox(height: 40),
            SelectButton(
              text: '좌석 선택',
              onPressed: () {
                // 동작 정의
                print('역 선택 버튼 클릭됨');
              },
            ),
          ],
        ),
      ),
    );
  }
}
