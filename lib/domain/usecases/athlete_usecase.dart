
import 'package:athelete_xperience/domain/entities/athlete.dart';

import '../../data/models/athleteDto.dart';
import '../../data/repositories/athlete_repository.dart';

class AthleteUseCase {
  List<AthleteDto> getAthletes() {
    final repository = AthleteRepository();
    return repository.getAthlete();
  }
}