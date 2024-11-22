import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:siento_find_therapist/presentation/therapist_list/widgets/therapist_list_item_widget.dart';
import 'package:siento_find_therapist/presentation/widgets/custom_error_widget.dart';
import 'package:siento_find_therapist/presentation/widgets/snackbar_widget.dart';
import 'package:siento_find_therapist/routes/app_router.dart';
import 'package:siento_find_therapist/shared/preferences/preferences_di_helper.dart';
import 'package:siento_find_therapist/shared/therapists/find_therapist_di_helper.dart';
import 'package:siento_find_therapist/theme/ui_text_style.dart';

class TherapistListWidget extends ConsumerStatefulWidget {
  const TherapistListWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TherapistListState();
}

class _TherapistListState extends ConsumerState<TherapistListWidget> {
  @override
  void initState() {
    super.initState();
    Future(() {
      ref.read(findTherapistsNotifierProvider.notifier).getTherapistsList();
      ref.read(preferencesNotifierProvider.notifier).getAllPreferences();
    });
  }

  @override
  Widget build(BuildContext context) {
    final provider = ref.watch(findTherapistsNotifierProvider);
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
            itemBuilder: (context, index) => TherapistListItemWidget(
              currentTherapist: filteredList[index],
              onTap: () {
                context.goNamed(
                  AppRouter.therapistDetailRouteData.name,
                  extra: filteredList[index],
                );
              },
            ),
          ),
          failedToLoad: (_) => ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: filteredList.length,
            itemBuilder: (context, index) => TherapistListItemWidget(
              currentTherapist: filteredList[index],
              onTap: () {
                context.goNamed(
                  AppRouter.therapistDetailRouteData.name,
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
