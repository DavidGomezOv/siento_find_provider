import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:siento_find_provider/domain/models/provider/provider_model.dart';
import 'package:siento_find_provider/presentation/preferences/preferences_page.dart';
import 'package:siento_find_provider/presentation/provider_detail/provider_detail_page.dart';
import 'package:siento_find_provider/presentation/provider_list/provider_list_page.dart';
import 'package:siento_find_provider/routes/app_route_data.dart';

part 'app_router.g.dart';

class AppRouter {
  static final AppRouteData providerListRouteData =
      AppRouteData(name: 'list', path: '/list');
  static final AppRouteData providerDetailRouteData =
      AppRouteData(name: 'detail', path: '/detail');
  static final AppRouteData providerPreferencesRouteData =
      AppRouteData(name: 'preferences', path: '/preferences');
}

@riverpod
GoRouter goRouter(Ref ref) {
  return GoRouter(
    initialLocation: AppRouter.providerListRouteData.path,
    routes: [
      GoRoute(
        path: AppRouter.providerListRouteData.path,
        name: AppRouter.providerListRouteData.name,
        builder: (context, state) => ProviderListPage(key: state.pageKey),
        routes: [
          GoRoute(
            path: AppRouter.providerDetailRouteData.path,
            name: AppRouter.providerDetailRouteData.name,
            builder: (context, state) {
              final ProviderModel selectedProvider =
                  state.extra as ProviderModel;
              return ProviderDetailPage(
                key: state.pageKey,
                selectedProvider: selectedProvider,
              );
            },
          ),
          GoRoute(
            path: AppRouter.providerPreferencesRouteData.path,
            name: AppRouter.providerPreferencesRouteData.name,
            builder: (context, state) => PreferencesPage(key: state.pageKey),
          ),
        ],
      ),
    ],
  );
}
