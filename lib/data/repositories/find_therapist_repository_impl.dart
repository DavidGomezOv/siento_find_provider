import 'package:siento_find_therapist/core/result.dart';
import 'package:siento_find_therapist/data/data_sources/find_therapist_datasource.dart';
import 'package:siento_find_therapist/data/repository_error_handler.dart';
import 'package:siento_find_therapist/domain/models/therapist/therapist_model.dart';
import 'package:siento_find_therapist/domain/repositories/find_therapist_repository.dart';

class FindTherapistRepositoryImpl with RepositoryErrorHandler implements FindTherapistRepository {
  final FindTherapistDatasource findTherapistsDatasource;

  FindTherapistRepositoryImpl({required this.findTherapistsDatasource});

  @override
  Future<Result<List<TherapistModel>>> getTherapists() => captureExceptions(
        () async {
          return await findTherapistsDatasource.getTherapists();
        },
      );
}
