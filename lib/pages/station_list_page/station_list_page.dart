import 'package:flutter/material.dart';

class StationListPage extends StatelessWidget {
  final bool isDeparture;
  final String? exclude;

  const StationListPage({
    super.key,
    required this.isDeparture,
    this.exclude,
  });

  @override
  Widget build(BuildContext context) {
    final stations = [
      '수서',
      '동탄',
      '평택지제',
      '천안아산',
      '오송',
      '대전',
      '김천구미',
      '동대구',
      '경주',
      '울산',
      '부산',
    ];

    final filteredStations = exclude != null
        ? stations.where((station) => station != exclude).toList()
        : stations;

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(isDeparture ? '출발역' : '도착역'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: filteredStations.length,
        itemBuilder: (context, index) {
          final station = filteredStations[index];
          return StationItem(
            name: station,
            onTap: () {
              Navigator.pop(context, station);
            },
          );
        },
      ),
    );
  }
}

class StationItem extends StatelessWidget {
  final String name;
  final VoidCallback onTap;

  const StationItem({
    super.key,
    required this.name,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.centerLeft,
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(height: 1, thickness: 1, color: Colors.grey[300]!),
        ],
      ),
    );
  }
}
