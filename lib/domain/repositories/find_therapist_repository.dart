import 'package:siento_find_therapist/core/result.dart';
import 'package:siento_find_therapist/domain/models/therapist/therapist_model.dart';

abstract class FindTherapistRepository {
  Future<Result<List<TherapistModel>>> getTherapists();
}
