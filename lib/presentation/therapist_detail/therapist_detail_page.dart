import 'package:flutter/material.dart';
import 'package:siento_find_therapist/presentation/widgets/back_button_widget.dart';
import 'package:siento_find_therapist/theme/ui_colors.dart';
import 'package:siento_find_therapist/domain/models/therapist/therapist_model.dart';
import 'package:siento_find_therapist/presentation/therapist_detail/widgets/therapist_detail_additional_information_widget.dart';
import 'package:siento_find_therapist/presentation/therapist_detail/widgets/therapist_detail_contact_buttons_widget.dart';
import 'package:siento_find_therapist/presentation/therapist_detail/widgets/therapist_detail_header_widget.dart';
import 'package:siento_find_therapist/presentation/therapist_detail/widgets/therapist_detail_specific_information_widget.dart';
import 'package:siento_find_therapist/theme/ui_text_style.dart';

class TherapistDetailPage extends StatelessWidget {
  const TherapistDetailPage({super.key, required this.selectedTherapist});

  final TherapistModel selectedTherapist;

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
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(14),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TherapistDetailHeaderWidget(
                      imageUrl: selectedTherapist.imageUrl,
                      name: selectedTherapist.name,
                      specialty: selectedTherapist.specialty,
                    ),
                    const SizedBox(height: 18),
                    TherapistDetailIndicatorsWidget(selectedTherapist: selectedTherapist),
                    const SizedBox(height: 15),
                    Text(
                      selectedTherapist.description,
                      style: UiTextStyle.tabsTextStyle,
                    ),
                    const SizedBox(height: 18),
                    TherapistDetailContactButtonsWidget(
                      phone: selectedTherapist.phone,
                      email: selectedTherapist.email,
                    ),
                    TherapistDetailAdditionalInformationWidget(selectedTherapist: selectedTherapist)
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
