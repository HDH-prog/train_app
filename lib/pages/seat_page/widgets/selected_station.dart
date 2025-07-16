import 'package:flutter/material.dart';

class SelectedStationWidget extends StatelessWidget {
  final String departure;
  final String arrival;

  const SelectedStationWidget({
    super.key,
    required this.departure,
    required this.arrival,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            departure,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
          const SizedBox(width: 50),
          const Icon(Icons.arrow_circle_right_outlined, size: 30),
          const SizedBox(width: 50),
          Text(
            arrival,
            style: const TextStyle(
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
