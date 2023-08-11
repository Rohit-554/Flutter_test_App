import 'package:flutter/cupertino.dart';

import '../../data/models/athleteDto.dart';

class AthleteLevelColumn extends StatelessWidget {
  final String levelTitle;
  final List<AthleteDto> athletes;

  const AthleteLevelColumn({super.key, required this.levelTitle, required this.athletes});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            levelTitle,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Column(
            children: athletes.map((athlete) {
              return Container(
                margin: const EdgeInsets.symmetric(vertical: 4),
                child: Text(athlete.name),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}





