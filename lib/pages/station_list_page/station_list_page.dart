import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  const StationListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('출발역'),
      ),
      body: ListView(
        children: const [
          StationItem('수서'),
          StationItem('동탄'),
          StationItem('평택지제'),
          StationItem('천안아산'),
          StationItem('오송'),
          StationItem('대전'),
          StationItem('김천구미'),
          StationItem('동대구'),
          StationItem('경주'),
          StationItem('울산'),
          StationItem('부산'),
        ],
      ),
    );
  }
}

class StationItem extends StatelessWidget {
  final String name;
  const StationItem(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          alignment: Alignment.centerLeft,
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
              ),
          ),
        ),
        Divider(height: 1, thickness: 1, color: Colors.grey[300]!),
      ],
    );
  }
}
