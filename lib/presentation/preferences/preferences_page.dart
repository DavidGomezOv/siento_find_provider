import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/presentation/preferences/widgets/preference_item_widget.dart';
import 'package:siento_find_provider/routes/app_router.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class PreferencesPage extends StatelessWidget {
  const PreferencesPage({super.key});

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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () => context.goNamed(AppRouter.providerListRouteData.name),
                    child: Row(
                      children: [
                        const Icon(Icons.arrow_back_rounded, color: UiColors.intenseGrey),
                        Text('Back', style: UiTextStyle.personNameRow)
                      ],
                    ),
                  ),
                ),
              ),
              Text('Preferences', style: UiTextStyle.headerPreferencesTextStyle),
              const SizedBox(height: 20),
              PreferenceItemWidget(
                icon: Icons.place_outlined,
                title: 'Location',
                description: 'Help us find your best fit by narrowing down where to look.',
                onTap: () {},
              ),
              PreferenceItemWidget(
                icon: Icons.medical_information_outlined,
                title: 'Insurance',
                description: 'Help us find providers who can bill your insurance first instead of you!',
                onTap: () {},
              ),
              PreferenceItemWidget(
                icon: Icons.inventory_2_outlined,
                title: 'Topics of Interest',
                description: 'Match with someone who really understands your specific concerns.',
                onTap: () {},
              ),
              PreferenceItemWidget(
                icon: Icons.chair_outlined,
                title: 'Service Type',
                description: 'Help us narrow down specifically how you’d like to receive help.',
                onTap: () {},
              ),
              PreferenceItemWidget(
                icon: Icons.groups_outlined,
                title: 'Culture & Faith',
                description: 'Match with a provider who knows about your point of view on life.',
                onTap: () {},
              ),
              PreferenceItemWidget(
                icon: Icons.transgender_outlined,
                title: 'Gender & Sexuality',
                description: 'Help us find a provider who makes you feel extra safe and supported.',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
