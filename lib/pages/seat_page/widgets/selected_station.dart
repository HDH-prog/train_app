import 'package:flutter/material.dart';

class SelectedStationWidget extends StatelessWidget {
  const SelectedStationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic, // baseline 정렬
        children: const [
          Text(
            '수서',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
          SizedBox(width: 50),
          Icon(Icons.arrow_circle_right_outlined, size: 30),
          SizedBox(width: 50),
          Text(
            '부산',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}
