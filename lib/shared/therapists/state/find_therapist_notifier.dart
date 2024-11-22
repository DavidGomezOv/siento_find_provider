import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:siento_find_therapist/core/enums.dart';
import 'package:siento_find_therapist/domain/models/therapist/therapist_model.dart';
import 'package:siento_find_therapist/domain/use_cases/find_therapist_use_cases.dart';

part 'find_therapist_state.dart';

part 'find_therapist_notifier.freezed.dart';

class FindTherapistNotifier extends StateNotifier<FindTherapistState> {
  final GetTherapistsUseCase getTherapistsUseCase;

  FindTherapistNotifier({
    required this.getTherapistsUseCase,
  }) : super(const FindTherapistState.loading());

  void getTherapistsList() async {
    state = const FindTherapistState.loading();

    final response = await getTherapistsUseCase.call();

    response.when(
      success: (data) => state = FindTherapistState.loaded(
        therapists: data,
        filteredList: data,
      ),
      failure: (error) => state = FindTherapistState.failedToLoad(errorMessage: error.toString()),
    );
  }

  void filterListByTypes({required TherapistType filterType}) async {
    state = FindTherapistState.loaded(
      therapists: state.maybeWhen(
        loaded: (therapists, _, __) => therapists,
        orElse: () => [],
      ),
      filteredList: state.maybeWhen(
        loaded: (therapists, _, __) {
          if (filterType == TherapistType.all) return therapists;
          return therapists
              .where(
                (element) => element.therapistType == filterType,
              )
              .toList();
        },
        orElse: () => [],
      ),
      selectedFilter: filterType,
    );
  }
}
