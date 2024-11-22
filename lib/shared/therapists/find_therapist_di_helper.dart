import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:siento_find_therapist/data/data_sources/find_therapist_datasource.dart';
import 'package:siento_find_therapist/data/repositories/find_therapist_repository_impl.dart';
import 'package:siento_find_therapist/domain/repositories/find_therapist_repository.dart';
import 'package:siento_find_therapist/domain/use_cases/find_therapist_use_cases.dart';
import 'package:siento_find_therapist/shared/therapists/state/find_therapist_notifier.dart';

final therapistsRepositoryProvider = Provider<FindTherapistRepository>(
  (ref) => FindTherapistRepositoryImpl(
    findTherapistsDatasource: FindTherapistDatasource(),
  ),
);

final getTherapistsUseCaseProvider = Provider<GetTherapistsUseCase>(
  (ref) {
    final repository = ref.watch(therapistsRepositoryProvider);
    return GetTherapistsUseCase(findTherapistsRepository: repository);
  },
);

final findTherapistsNotifierProvider =
    AutoDisposeStateNotifierProvider<FindTherapistNotifier, FindTherapistState>(
  (ref) {
    final useCase = ref.watch(getTherapistsUseCaseProvider);
    return FindTherapistNotifier(getTherapistsUseCase: useCase);
  },
);
