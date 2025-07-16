import 'package:flutter/material.dart';

class SeatGrid extends StatelessWidget {
  final int? selectedRow;
  final int? selectedCol;
  final Function(int row, int col) onSeatTap;

  const SeatGrid({
    super.key,
    required this.selectedRow,
    required this.selectedCol,
    required this.onSeatTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 21, // header + 20 rows
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SeatLabel('A'),
                SeatLabel('B'),
                SizedBox(width: 50),
                SeatLabel('C'),
                SeatLabel('D'),
              ],
            ),
          );
        }

        int rowNum = index - 1;

        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(5, (colIndex) {
              if (colIndex == 2) {
                return rowNumberBox(rowNum + 1);
              }

              int realCol = colIndex > 2 ? colIndex - 1 : colIndex;
              bool isSelected = selectedRow == rowNum && selectedCol == realCol;

              return GestureDetector(
                onTap: () => onSeatTap(rowNum, realCol),
                child: seatBox(isSelected),
              );
            }),
          ),
        );
      },
    );
  }

  Widget seatBox(bool isSelected) {
    return Container(
      width: 50,
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        color: isSelected ? Colors.purple : Colors.grey[300],
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }

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
