import 'package:flutter/material.dart';

Widget buildStation(String stationName, String selectText) {
  return Expanded(
    child: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            stationName,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            selectText,
            style: const TextStyle(
              fontSize: 40,
            ),
          ),
        ],
      ),
    ),
  );
}

class StationSelectBox extends StatelessWidget {
  const StationSelectBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildStation('출발역', '선택'),
          SizedBox(
            height: 50,
            child: VerticalDivider(
            width: 2, // 총 차지하는 가로폭
            thickness: 2, // 실제 선의 두께
            color: Colors.grey.shade400,
                    ),
                  ),
          buildStation('도착역', '선택'),
        ],
      ),
    );
  }
}
