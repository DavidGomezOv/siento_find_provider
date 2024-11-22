import 'package:siento_find_therapist/core/result.dart';
import 'package:siento_find_therapist/domain/models/therapist/therapist_model.dart';
import 'package:siento_find_therapist/domain/repositories/find_therapist_repository.dart';

class GetTherapistsUseCase {
  final FindTherapistRepository findTherapistsRepository;

  GetTherapistsUseCase({required this.findTherapistsRepository});

  Future<Result<List<TherapistModel>>> call() => findTherapistsRepository.getTherapists();
}
