import 'package:athelete_xperience/domain/entities/athlete.dart';
import 'package:flutter/material.dart';

import '../../data/models/athleteDto.dart';
import '../../domain/usecases/athlete_usecase.dart';
import '../widgets/athletecoloum.dart';


class AthleteScreen extends StatelessWidget {
  final AthleteUseCase athleteUseCase = AthleteUseCase();

  AthleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final athletes = athleteUseCase.getAthletes();

    List<AthleteDto> basicAthletes = athletes.where((athlete) => athlete.level == 'Basic').toList();
    List<AthleteDto> intermediateAthletes = athletes.where((athlete) => athlete.level == 'Intermediate').toList();
    List<AthleteDto> advancedAthletes = athletes.where((athlete) => athlete.level == 'Advanced').toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Athletes Info'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            AthleteLevelColumn(levelTitle: 'Basic', athletes: basicAthletes),
            AthleteLevelColumn(levelTitle: 'Intermediate', athletes: intermediateAthletes),
            AthleteLevelColumn(levelTitle: 'Advanced', athletes: advancedAthletes),
          ],
        ),
      ),
    );
  }
}