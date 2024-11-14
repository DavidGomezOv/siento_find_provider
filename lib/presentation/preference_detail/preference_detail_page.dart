import 'package:flutter/material.dart';
import 'package:siento_find_provider/core/enums.dart';
import 'package:siento_find_provider/domain/models/preferences/preference_item_model.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Builder(
          builder: (context) {
            final currentPreferenceType = PreferenceType.values.firstWhere(
              (element) => element.intValue == preferenceItemModel.preferenceIntType,
            );
            switch (currentPreferenceType) {
              case PreferenceType.location:
              // TODO: Handle this case.
              case PreferenceType.insurance:
              // TODO: Handle this case.
              case PreferenceType.topicsOfInterest:
              // TODO: Handle this case.
              case PreferenceType.serviceType:
              // TODO: Handle this case.
              case PreferenceType.cultureAndFaith:
              // TODO: Handle this case.
              case PreferenceType.genderAndSexuality:
                return const Placeholder();
              default:
                return const Center(
                  child: Text('No Preference available'),
                );
            }
          },
        ),
      ),
    );
  }
}
