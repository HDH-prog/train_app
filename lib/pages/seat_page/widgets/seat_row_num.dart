import 'package:flutter/material.dart';

class SeatRowNum extends StatelessWidget {
  const SeatRowNum({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          alphabetBox('A'),
          alphabetBox('B'),
          alphabetBox('C'),
          alphabetBox('D'),
        ],
      ),
    );
  }

  static Widget alphabetBox(String label) {
    return SizedBox(
      width: 50,
      height: 18,
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
