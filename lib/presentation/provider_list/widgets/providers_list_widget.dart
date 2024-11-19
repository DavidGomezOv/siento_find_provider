import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:siento_find_provider/presentation/provider_list/widgets/provider_list_item_widget.dart';
import 'package:siento_find_provider/presentation/widgets/custom_error_widget.dart';
import 'package:siento_find_provider/presentation/widgets/snackbar_widget.dart';
import 'package:siento_find_provider/routes/app_router.dart';
import 'package:siento_find_provider/shared/preferences/preferences_di_helper.dart';
import 'package:siento_find_provider/shared/providers/find_provider_di_helper.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class ProvidersListWidget extends ConsumerStatefulWidget {
  const ProvidersListWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProvidersListState();
}

class _ProvidersListState extends ConsumerState<ProvidersListWidget> {
  @override
  void initState() {
    super.initState();
    Future(() {
      ref.read(findProviderNotifierProvider.notifier).getProvidersList();
      ref.read(preferencesNotifierProvider.notifier).getAllPreferences();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(findProviderNotifierProvider);
    ref.listen(preferencesNotifierProvider, (previous, next) {
      next.maybeWhen(
        failedToLoad: (errorMessage) =>
            showCommonSnackBar(context, 'Failed to load Preferences: $errorMessage'),
        orElse: () {},
      );
    });
    return provider.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      loaded: (_, filteredList, __) {
        if (filteredList.isEmpty) {
          return Center(
            child: Text(
              'No results found for the selected Filter',
              style: UiTextStyle.popupTextStyle,
            ),
          );
        }
        final preferencesProvider = ref.watch(preferencesNotifierProvider);
        return preferencesProvider.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (_) => ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: filteredList.length,
            itemBuilder: (context, index) => ProviderListItemWidget(
              currentProvider: filteredList[index],
              onTap: () {
                context.goNamed(
                  AppRouter.providerDetailRouteData.name,
                  extra: filteredList[index],
                );
              },
            ),
          ),
          failedToLoad: (_) => ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: filteredList.length,
            itemBuilder: (context, index) => ProviderListItemWidget(
              currentProvider: filteredList[index],
              onTap: () {
                context.goNamed(
                  AppRouter.providerDetailRouteData.name,
                  extra: filteredList[index],
                );
              },
            ),
          ),
        );
      },
      failedToLoad: (errorMessage) =>
          CustomErrorWidget(errorMessage: 'Failed to load Providers: $errorMessage'),
    );
  }
}
