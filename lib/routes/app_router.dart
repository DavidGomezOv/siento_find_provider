import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:siento_find_therapist/domain/models/therapist/therapist_model.dart';
import 'package:siento_find_therapist/presentation/preference_detail/preference_detail_page.dart';
import 'package:siento_find_therapist/presentation/preferences/preferences_page.dart';
import 'package:siento_find_therapist/presentation/therapist_detail/therapist_detail_page.dart';
import 'package:siento_find_therapist/presentation/therapist_list/therapist_list_page.dart';
import 'package:siento_find_therapist/routes/app_route_data.dart';

part 'app_router.g.dart';

class AppRouter {
  static final AppRouteData therapistsListRouteData = AppRouteData(name: 'list', path: '/list');
  static final AppRouteData therapistDetailRouteData =
      AppRouteData(name: 'therapist-detail', path: '/detail');
  static final AppRouteData preferencesRouteData =
      AppRouteData(name: 'preferences', path: '/preferences');
  static final AppRouteData preferenceDetailRouteData =
      AppRouteData(name: 'preference-detail', path: '/detail');
}

@riverpod
GoRouter goRouter(Ref ref) {
  return GoRouter(
    initialLocation: AppRouter.therapistsListRouteData.path,
    routes: [
      GoRoute(
        path: AppRouter.therapistsListRouteData.path,
        name: AppRouter.therapistsListRouteData.name,
        builder: (context, state) => TherapistListPage(key: state.pageKey),
        routes: [
          GoRoute(
            path: AppRouter.therapistDetailRouteData.path,
            name: AppRouter.therapistDetailRouteData.name,
            builder: (context, state) {
              final TherapistModel selectedTherapist = state.extra as TherapistModel;
              return TherapistDetailPage(
                key: state.pageKey,
                selectedTherapist: selectedTherapist,
              );
            },
          ),
          GoRoute(
              path: AppRouter.preferencesRouteData.path,
              name: AppRouter.preferencesRouteData.name,
              builder: (context, state) => PreferencesPage(key: state.pageKey),
              routes: [
                GoRoute(
                  path: AppRouter.preferenceDetailRouteData.path,
                  name: AppRouter.preferenceDetailRouteData.name,
                  builder: (context, state) {
                    final parameters = state.extra as Map<String, dynamic>;
                    return PreferenceDetailPage(
                      key: state.pageKey,
                      preferenceItemModel: parameters['preferenceItemModel'],
                      preferenceModel: parameters['preferenceModel'],
                    );
                  },
                ),
              ]),
        ],
      ),
    ],
  );
}
