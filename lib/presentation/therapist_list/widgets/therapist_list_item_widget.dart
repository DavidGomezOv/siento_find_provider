import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:siento_find_therapist/core/enums.dart';
import 'package:siento_find_therapist/domain/models/preferences/preference_model.dart';
import 'package:siento_find_therapist/shared/preferences/preferences_di_helper.dart';
import 'package:siento_find_therapist/theme/ui_colors.dart';
import 'package:siento_find_therapist/domain/models/therapist/therapist_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:siento_find_therapist/presentation/widgets/therapist_specific_information_widget.dart';
import 'package:siento_find_therapist/theme/ui_text_style.dart';

class TherapistListItemWidget extends StatelessWidget {
  const TherapistListItemWidget({
    super.key,
    required this.currentTherapist,
    required this.onTap,
  });

  final TherapistModel currentTherapist;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 14, right: 14, left: 14),
        decoration: BoxDecoration(
          color: UiColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      child: SizedBox(
                        width: 86,
                        height: 86,
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          placeholder: (context, url) => const Padding(
                            padding: EdgeInsets.all(10),
                            child: CircularProgressIndicator(),
                          ),
                          imageUrl: currentTherapist.imageUrl,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            currentTherapist.name,
                            style: UiTextStyle.sidePanelNameTextStyle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            currentTherapist.specialty,
                            style: UiTextStyle.primaryTextStyle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          TherapistSpecificInformationWidget(
                            icons: const [
                              Icon(Icons.favorite_border_outlined,
                                  color: UiColors.lightPink, size: 18)
                            ],
                            label: 'Endorsed ${currentTherapist.endorsedTimes} times',
                          ),
                          TherapistSpecificInformationWidget(
                            icons: const [
                              Icon(Icons.place_outlined, color: UiColors.iconRed, size: 18)
                            ],
                            label:
                                '${currentTherapist.milesAway} ${currentTherapist.milesAway == '1' ? 'mile' : 'miles'} from you',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                if (currentTherapist.connectionMethod.isNotEmpty)
                  TherapistSpecificInformationWidget(
                    icons: [
                      if (currentTherapist
                          .getConnectionMethodLabel()
                          .toLowerCase()
                          .contains('person'))
                        const Icon(Icons.handshake_outlined, color: UiColors.intenseGrey, size: 18),
                      if (currentTherapist
                          .getConnectionMethodLabel()
                          .toLowerCase()
                          .contains('online'))
                        const Icon(Icons.video_camera_front_outlined,
                            color: UiColors.intenseGrey, size: 18),
                    ],
                    label: currentTherapist.getConnectionMethodLabel(),
                  ),
                if (currentTherapist.inYourInsuranceNetwork)
                  const TherapistSpecificInformationWidget(
                    icons: [
                      Icon(Icons.medical_services_outlined, color: UiColors.deepGreen, size: 18)
                    ],
                    label: 'In your insurance network',
                  ),
                if (currentTherapist.coveredByYourEpa)
                  const TherapistSpecificInformationWidget(
                    icons: [
                      Icon(Icons.tag_faces_outlined, color: UiColors.yellowMustard, size: 18)
                    ],
                    label: 'Covered by your EAP',
                    fontWeight: FontWeight.bold,
                  ),
                if (currentTherapist.vettedByYourDepartment)
                  const TherapistSpecificInformationWidget(
                    icons: [
                      Icon(Icons.check_circle_outline_rounded, color: UiColors.lightBlue, size: 18)
                    ],
                    label: 'Vetted by your department',
                  ),
                if (currentTherapist.therapistType != TherapistType.psychiatry &&
                    currentTherapist.therapistType != TherapistType.inpatient &&
                    currentTherapist.preferences != null)
                  _MatchingPreferences(
                    therapistPreferenceModel: currentTherapist.preferences!,
                    therapistType: currentTherapist.therapistType,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _MatchingPreferences extends StatelessWidget {
  const _MatchingPreferences({
    required this.therapistPreferenceModel,
    required this.therapistType,
  });

  final PreferenceModel therapistPreferenceModel;
  final TherapistType therapistType;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final preferencesProvider = ref.watch(preferencesNotifierProvider);
        return preferencesProvider.maybeWhen(
          loaded: (preferences) {
            String matchingPreferences = '';
            if (therapistType == TherapistType.therapy) {
              matchingPreferences =
                  'Fits your preferences: ${therapistPreferenceModel.matchingAllPreferences(preferenceToCompare: preferences)}';
            } else {
              matchingPreferences =
                  'Fits your topic of interest: ${therapistPreferenceModel.matchingTopicsOfInterest(preferenceToCompare: preferences)}';
            }
            if (matchingPreferences.isEmpty) return const SizedBox.shrink();
            return Padding(
              padding: const EdgeInsets.all(5),
              child: TherapistSpecificInformationWidget(
                icons: const [Icon(Icons.search_outlined, color: UiColors.deftBlue800, size: 22)],
                label: matchingPreferences,
              ),
            );
          },
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
