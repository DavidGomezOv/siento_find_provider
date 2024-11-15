import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_item_model.dart';
import 'package:siento_find_provider/presentation/widgets/back_button_widget.dart';
import 'package:siento_find_provider/shared/preferences/preferences_di_helper.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/presentation/preferences/widgets/preference_item_widget.dart';
import 'package:siento_find_provider/routes/app_router.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class PreferencesPage extends StatelessWidget {
  const PreferencesPage({super.key});

  void navigateToDetail(
    BuildContext context, {
    required PreferenceItemModel preferenceModel,
  }) {
    context.goNamed(AppRouter.preferenceDetailRouteData.name, extra: preferenceModel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiColors.onboardingBlue,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const BackButtonWidget(),
              Text('Preferences', style: UiTextStyle.headerPreferencesTextStyle),
              const SizedBox(height: 20),
              Consumer(
                builder: (context, ref, child) {
                  final preferencesProvider = ref.watch(preferencesNotifierProvider);
                  return preferencesProvider.when(
                    loading: () => const Center(child: CircularProgressIndicator()),
                    loaded: (preferences) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          PreferenceItemWidget(
                            icon: Icons.place_outlined,
                            title: 'Location',
                            description:
                                'Help us find your best fit by narrowing down where to look.',
                            onTap: () => navigateToDetail(
                              context,
                              preferenceModel: preferences.locationPreferenceModel,
                            ),
                          ),
                          PreferenceItemWidget(
                            icon: Icons.medical_information_outlined,
                            title: 'Insurance',
                            description:
                                'Help us find providers who can bill your insurance first instead of you!',
                            onTap: () => navigateToDetail(
                              context,
                              preferenceModel: preferences.insurancePreferenceModel,
                            ),
                          ),
                          PreferenceItemWidget(
                            icon: Icons.inventory_2_outlined,
                            title: 'Topics of Interest',
                            description:
                                'Match with someone who really understands your specific concerns.',
                            onTap: () => navigateToDetail(
                              context,
                              preferenceModel: preferences.topicsOfInterestPreferenceModel,
                            ),
                          ),
                          PreferenceItemWidget(
                            icon: Icons.chair_outlined,
                            title: 'Service Type',
                            description:
                                'Help us narrow down specifically how you’d like to receive help.',
                            onTap: () => navigateToDetail(
                              context,
                              preferenceModel: preferences.serviceTypePreferenceModel,
                            ),
                          ),
                          PreferenceItemWidget(
                            icon: Icons.groups_outlined,
                            title: 'Culture & Faith',
                            description:
                                'Match with a provider who knows about your point of view on life.',
                            onTap: () => navigateToDetail(
                              context,
                              preferenceModel: preferences.cultureAndFaithPreferenceModel,
                            ),
                          ),
                          PreferenceItemWidget(
                            icon: Icons.transgender_outlined,
                            title: 'Gender & Sexuality',
                            description:
                                'Help us find a provider who makes you feel extra safe and supported.',
                            onTap: () => navigateToDetail(
                              context,
                              preferenceModel: preferences.genderAndSexualityPreferenceModel,
                            ),
                          ),
                        ],
                      );
                    },
                    failedToLoad: (errorMessage) => Container(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
