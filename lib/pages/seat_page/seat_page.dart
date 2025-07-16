import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/selected_station.dart';
import 'widgets/is_selected.dart';
import 'widgets/seat_grid.dart';

class SeatPage extends StatefulWidget {
  const SeatPage({super.key});

  @override
  State<SeatPage> createState() => _SeatPageState();
}

class _SeatPageState extends State<SeatPage> {
  int? selectedRow;
  int? selectedCol;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final departure = args['departure']!;
    final arrival = args['arrival']!;

    return Scaffold(
      appBar: AppBar(
        title: const Text('좌석 선택'),
        centerTitle: true,
        leading: const BackButton(),
      ),
      body: Column(
        children: [
          SelectedStationWidget(
            departure: departure,
            arrival: arrival,
          ),
          const IsSelectedGuideWidget(),
          const Divider(height: 1),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SeatGrid(
                selectedRow: selectedRow,
                selectedCol: selectedCol,
                onSeatTap: (row, col) {
                  setState(() {
                    selectedRow = row;
                    selectedCol = col;
                  });
                },
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 60,
            margin: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: selectedRow == null || selectedCol == null
                  ? null
                  : () {
                      showCupertinoDialog(
                        context: context,
                        builder: (_) => CupertinoAlertDialog(
                          title: const Text('예매하시겠습니까?'),
                          actions: [
                            CupertinoDialogAction(
                              child: const Text('취소', style: TextStyle(color: Colors.red)),
                              onPressed: () => Navigator.pop(context),
                            ),
                            CupertinoDialogAction(
                              child: const Text('확인'),
                              onPressed: () {
                                Navigator.pop(context); // 다이얼로그 닫기
                                Navigator.pop(context); // SeatPage → HomePage
                                Navigator.pop(context); // HomePage → 루트
                              },
                            ),
                          ],
                        ),
                      );
                    },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                '예매 하기',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
