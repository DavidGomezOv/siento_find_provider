import 'package:flutter/material.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_item_model.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/culture_faith_preference_widget.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/gender_sexuality_preference_widget.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/insurance_preference_widget.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/location_preference_widget.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/service_type_preference_widget.dart';
import 'package:siento_find_provider/presentation/preference_detail/widgets/topics_of_interest_preference_widget.dart';
import 'package:siento_find_provider/presentation/widgets/back_button_widget.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';

class PreferenceDetailPage extends StatelessWidget {
  const PreferenceDetailPage({
    super.key,
    required this.preferenceItemModel,
  });

  final PreferenceItemModel preferenceItemModel;

  @override
  Widget build(BuildContext context) {
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
                  onSavePreference: (PreferenceItemModel model) {
                    //TODO ADD SAVE PREFERENCE
                  },
                  selectedValue: locationPreference,
                ),
                insurance: (insurances) => InsurancePreferenceWidget(
                  onSavePreference: (PreferenceItemModel model) {},
                ),
                topicsOfInterest: (topicsOfInterest) => TopicsOfInterestPreferenceWidget(
                  onSavePreference: (PreferenceItemModel model) {},
                ),
                serviceType: (routeOfService, typeOfService) => ServiceTypePreferenceWidget(
                  onSavePreference: (PreferenceItemModel model) {},
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
