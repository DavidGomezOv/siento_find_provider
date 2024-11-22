import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:siento_find_therapist/domain/models/preferences/preference_item_model.dart';
import 'package:siento_find_therapist/domain/models/preferences/preference_model.dart';
import 'package:siento_find_therapist/presentation/widgets/back_button_widget.dart';
import 'package:siento_find_therapist/presentation/widgets/custom_error_widget.dart';
import 'package:siento_find_therapist/shared/preferences/preferences_di_helper.dart';
import 'package:siento_find_therapist/theme/ui_colors.dart';
import 'package:siento_find_therapist/presentation/preferences/widgets/preference_item_widget.dart';
import 'package:siento_find_therapist/routes/app_router.dart';
import 'package:siento_find_therapist/theme/ui_text_style.dart';

class PreferencesPage extends StatelessWidget {
  const PreferencesPage({super.key});

  void navigateToDetail(
    BuildContext context, {
    required PreferenceItemModel preferenceItemModel,
    required PreferenceModel preferenceModel,
  }) {
    context.goNamed(
      AppRouter.preferenceDetailRouteData.name,
      extra: {
        'preferenceModel': preferenceModel,
        'preferenceItemModel': preferenceItemModel,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiColors.onboardingBlue,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: Column(
          children: [
            const BackButtonWidget(),
            Text('Preferences', style: UiTextStyle.headerPreferencesTextStyle),
            const SizedBox(height: 20),
            Expanded(
              child: Consumer(
                builder: (context, ref, child) {
                  final preferencesProvider = ref.watch(preferencesNotifierProvider);
                  return preferencesProvider.when(
                    loading: () => const Center(child: CircularProgressIndicator()),
                    loaded: (preferences) {
                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            PreferenceItemWidget(
                              icon: Icons.place_outlined,
                              title: 'Location',
                              description:
                                  'Help us find your best fit by narrowing down where to look.',
                              onTap: () => navigateToDetail(
                                context,
                                preferenceItemModel: preferences.locationPreferenceModel,
                                preferenceModel: preferences,
                              ),
                            ),
                            PreferenceItemWidget(
                              icon: Icons.medical_information_outlined,
                              title: 'Insurance',
                              description:
                                  'Help us find providers who can bill your insurance first instead of you!',
                              onTap: () => navigateToDetail(
                                context,
                                preferenceItemModel: preferences.insurancePreferenceModel,
                                preferenceModel: preferences,
                              ),
                            ),
                            PreferenceItemWidget(
                              icon: Icons.inventory_2_outlined,
                              title: 'Topics of Interest',
                              description:
                                  'Match with someone who really understands your specific concerns.',
                              onTap: () => navigateToDetail(
                                context,
                                preferenceItemModel: preferences.topicsOfInterestPreferenceModel,
                                preferenceModel: preferences,
                              ),
                            ),
                            PreferenceItemWidget(
                              icon: Icons.chair_outlined,
                              title: 'Service Type',
                              description:
                                  'Help us narrow down specifically how you’d like to receive help.',
                              onTap: () => navigateToDetail(
                                context,
                                preferenceItemModel: preferences.serviceTypePreferenceModel,
                                preferenceModel: preferences,
                              ),
                            ),
                            PreferenceItemWidget(
                              icon: Icons.groups_outlined,
                              title: 'Culture & Faith',
                              description:
                                  'Match with a provider who knows about your point of view on life.',
                              onTap: () => navigateToDetail(
                                context,
                                preferenceItemModel: preferences.cultureAndFaithPreferenceModel,
                                preferenceModel: preferences,
                              ),
                            ),
                            PreferenceItemWidget(
                              icon: Icons.transgender_outlined,
                              title: 'Gender & Sexuality',
                              description:
                                  'Help us find a provider who makes you feel extra safe and supported.',
                              onTap: () => navigateToDetail(
                                context,
                                preferenceItemModel: preferences.genderAndSexualityPreferenceModel,
                                preferenceModel: preferences,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    failedToLoad: (errorMessage) => CustomErrorWidget(errorMessage: errorMessage),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
