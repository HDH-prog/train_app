import 'package:flutter/material.dart';

class IsSelectedGuideWidget extends StatelessWidget {
  const IsSelectedGuideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(width: 4),
                const Text('선택됨'),
              ],
            ),
            const SizedBox(width: 20),
            Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                const SizedBox(width: 4),
                const Text('선택 안 됨'), // 수정됨
              ],
            ),
          ],
        ),
      ),
    );
  }
}
