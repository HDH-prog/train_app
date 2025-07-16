import 'package:flutter/material.dart';

class StationSelectBox extends StatelessWidget {
  final String departure;
  final String arrival;
  final VoidCallback onDepartureTap;
  final VoidCallback onArrivalTap;

  const StationSelectBox({
    super.key,
    required this.departure,
    required this.arrival,
    required this.onDepartureTap,
    required this.onArrivalTap,
  });

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
          buildStation('출발역', departure, onDepartureTap),
          SizedBox(
            height: 50,
            child: VerticalDivider(
              width: 2,
              thickness: 2,
              color: Colors.grey.shade400,
            ),
          ),
          buildStation('도착역', arrival, onArrivalTap),
        ],
      ),
    );
  }

  Widget buildStation(String label, String value, VoidCallback onTap) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
