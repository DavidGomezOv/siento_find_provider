import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_item_model.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_model.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/pages/preferences_detail_pages.dart';
import 'package:siento_find_provider/presentation/widgets/back_button_widget.dart';
import 'package:siento_find_provider/shared/preferences/preferences_di_helper.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';

class PreferenceDetailPage extends ConsumerWidget {
  const PreferenceDetailPage({
    super.key,
    required this.preferenceItemModel,
    required this.preferenceModel,
  });

  final PreferenceItemModel preferenceItemModel;
  final PreferenceModel preferenceModel;

  void savePreferences(WidgetRef ref, PreferenceModel model) {
    ref.read(preferencesNotifierProvider.notifier).savePreferences(
          updatedPreferencesModel: model,
        );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: UiColors.onboardingBlue,
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 14),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const BackButtonWidget(),
              preferenceItemModel.mappedSettings.when(
                location: (locationPreference) => LocationPreferenceWidget(
                  onSavePreference: (PreferenceItemModel model) => savePreferences(
                    ref,
                    preferenceModel.copyWith(locationPreferenceModel: model),
                  ),
                ),
                insurance: (insurances) => InsurancePreferenceWidget(
                  onSavePreference: (PreferenceItemModel model) => savePreferences(
                    ref,
                    preferenceModel.copyWith(insurancePreferenceModel: model),
                  ),
                ),
                topicsOfInterest: (topicsOfInterest) => TopicsOfInterestPreferenceWidget(
                  onSavePreference: (PreferenceItemModel model) => savePreferences(
                    ref,
                    preferenceModel.copyWith(topicsOfInterestPreferenceModel: model),
                  ),
                ),
                serviceType: (routeOfService, typeOfService) => ServiceTypePreferenceWidget(
                  onSavePreference: (PreferenceItemModel model) => savePreferences(
                    ref,
                    preferenceModel.copyWith(serviceTypePreferenceModel: model),
                  ),
                ),
                cultureAndFaith: (cultures, faiths) => CultureFaithPreferenceWidget(
                  onSavePreference: (PreferenceItemModel model) {},
                ),
                genderAndSexuality: (genders, providerIdentifiesAs) =>
                    GenderSexualityPreferenceWidget(
                  onSavePreference: (PreferenceItemModel model) {},
                ),
                empty: () => const Center(
                  child: Text('No Preference available'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
