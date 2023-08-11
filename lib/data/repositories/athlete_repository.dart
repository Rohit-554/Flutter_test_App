
import '../models/athleteDto.dart';

class AthleteRepository {
  List<AthleteDto> getAthlete() {
    return [
      AthleteDto('Abhishek', 'Basic'),
      AthleteDto('Tarun', 'Intermediate'),
      AthleteDto('Mohan', 'Advanced'),
      AthleteDto('Mohan', 'Intermediate'),
      AthleteDto('Raja', 'Basic'),
    ];
  }
}