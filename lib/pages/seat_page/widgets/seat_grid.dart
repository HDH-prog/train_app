import 'package:flutter/material.dart';

class SeatGrid extends StatelessWidget {
  const SeatGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 21, // 헤더 포함 21줄
      itemBuilder: (context, index) {
        if (index == 0) {
          // 헤더 라벨
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SeatLabel('A'),
                SeatLabel('B'),
                SizedBox(width: 50), // 열번호 자리에 빈칸
                SeatLabel('C'),
                SeatLabel('D'),
              ],
            ),
          );
        }

        int rowNum = index;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              seatBox(),
              seatBox(),
              rowNumberBox(rowNum),
              seatBox(),
              seatBox(),
            ],
          ),
        );
      },
    );
  }

  // 회색 좌석 셀
  Widget seatBox() {
    return Container(
      width: 50,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }

  // 가운데 열 번호 셀 (배경 없음)
  Widget rowNumberBox(int number) {
    return Container(
      width: 50,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      alignment: Alignment.center,
      child: Text(
        number.toString(),
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

// A, B, C, D 라벨
class SeatLabel extends StatelessWidget {
  final String label;
  const SeatLabel(this.label, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      alignment: Alignment.center,
      child: Text(
        label,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
