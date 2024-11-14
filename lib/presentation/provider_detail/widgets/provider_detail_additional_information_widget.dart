import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jiffy/jiffy.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/domain/models/provider_client_focus_model.dart';
import 'package:siento_find_provider/domain/models/provider_model.dart';
import 'package:siento_find_provider/presentation/widgets/provider_specific_information_widget.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class ProviderDetailAdditionalInformationWidget extends StatelessWidget {
  const ProviderDetailAdditionalInformationWidget({
    super.key,
    required this.selectedProvider,
  });

  final ProviderModel selectedProvider;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (selectedProvider.specialtyAndExpertise.isNotEmpty)
          _AdditionalInfo(
            title: 'Specialty and Expertise',
            iconData: Icons.chair_outlined,
            label: selectedProvider.specialtyAndExpertise,
          ),
        if (selectedProvider.clientFocus.hasValues())
          _ClientFocus(
            clientFocusModel: selectedProvider.clientFocus,
          ),
        if (selectedProvider.treatmentApproaches.isNotEmpty)
          _AdditionalInfo(
            title: 'Treatment Approaches',
            iconData: Icons.emoji_objects_outlined,
            label: selectedProvider.getTreatmentApproachesLabel(),
          ),
        if (selectedProvider.qualifications.isNotEmpty) ...[
          _AdditionalInfo(
            title: 'Qualifications',
            iconData: Icons.beenhere_outlined,
            label: selectedProvider.qualifications,
          ),
          if (selectedProvider.vettedByYourDepartment)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
              child: ProviderSpecificInformationWidget(
                icons: const [
                  Icon(
                    Icons.check_circle_outline_rounded,
                    color: UiColors.lightBlue,
                    size: 24,
                  ),
                ],
                label: 'Vetted by your department',
                fontSize: 15.sp,
              ),
            ),
        ],
        if (selectedProvider.lastUpdated != null)
          _AdditionalInfo(
            title: 'Last Date Information Updated',
            iconData: Icons.calendar_month_outlined,
            label: Jiffy.parseFromDateTime(
              DateTime.fromMillisecondsSinceEpoch(selectedProvider.lastUpdated!.seconds * 1000),
            ).yMMMMd,
          ),
      ],
    );
  }
}

class _AdditionalInfo extends StatelessWidget {
  const _AdditionalInfo({
    required this.title,
    required this.iconData,
    required this.label,
  });

  final String title;
  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 18),
        Row(
          children: [
            Icon(iconData),
            const SizedBox(width: 8),
            Text(
              title,
              style: UiTextStyle.popupTextStyle,
            )
          ],
        ),
        const SizedBox(height: 5),
        Text(
          label,
          style: UiTextStyle.tabsTextStyle,
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}

class _ClientFocus extends StatelessWidget {
  const _ClientFocus({required this.clientFocusModel});

  final ProviderClientFocusModel clientFocusModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Row(
          children: [
            const Icon(Icons.family_restroom_outlined),
            const SizedBox(width: 8),
            Text(
              'Client Focus',
              style: UiTextStyle.popupTextStyle,
            )
          ],
        ),
        const SizedBox(height: 5),
        Text(
          'Ages: ${clientFocusModel.ages}',
          style: UiTextStyle.tabsTextStyle,
        ),
        const SizedBox(height: 2),
        Text(
          'Participants: ${clientFocusModel.getParticipantsLabel()}',
          style: UiTextStyle.tabsTextStyle,
        ),
        const SizedBox(height: 2),
        Text(
          'Communities: ${clientFocusModel.getCommunitiesLabel()}',
          style: UiTextStyle.tabsTextStyle,
        ),
      ],
    );
  }
}
