import 'package:flutter/material.dart';

class SeatCell extends StatelessWidget {
  final int row;
  final int col;

  const SeatCell({
    super.key,
    required this.row,
    required this.col,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}
