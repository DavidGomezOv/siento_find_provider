import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siento_find_therapist/presentation/therapist_detail/widgets/vetted_meaning_dialog_content.dart';
import 'package:siento_find_therapist/presentation/widgets/show_custom_dialog.dart';
import 'package:siento_find_therapist/theme/ui_colors.dart';
import 'package:siento_find_therapist/domain/models/therapist/therapist_model.dart';
import 'package:siento_find_therapist/presentation/widgets/therapist_specific_information_widget.dart';

class TherapistDetailIndicatorsWidget extends StatelessWidget {
  const TherapistDetailIndicatorsWidget({
    super.key,
    required this.selectedTherapist,
  });

  final TherapistModel selectedTherapist;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TherapistSpecificInformationWidget(
            icons: const [
              Icon(
                Icons.favorite_border_outlined,
                color: UiColors.lightPink,
                size: 24,
              )
            ],
            label: 'Endorsed ${selectedTherapist.endorsedTimes} times',
            fontSize: 15.sp,
          ),
          const SizedBox(height: 3),
          TherapistSpecificInformationWidget(
            icons: const [
              Icon(
                Icons.place_outlined,
                color: UiColors.iconRed,
                size: 24,
              )
            ],
            label: '${selectedTherapist.milesAway} miles from you',
            fontSize: 15.sp,
          ),
          if (selectedTherapist.connectionMethod.isNotEmpty) ...[
            const SizedBox(height: 3),
            TherapistSpecificInformationWidget(
              icons: [
                if (selectedTherapist.getConnectionMethodLabel().toLowerCase().contains('person'))
                  const Icon(
                    Icons.handshake_outlined,
                    color: UiColors.intenseGrey,
                    size: 24,
                  ),
                if (selectedTherapist.getConnectionMethodLabel().toLowerCase().contains('online'))
                  const Icon(
                    Icons.video_camera_front_outlined,
                    color: UiColors.intenseGrey,
                    size: 24,
                  ),
              ],
              label: selectedTherapist.getConnectionMethodLabel(),
              fontSize: 15.sp,
            ),
          ],
          if (selectedTherapist.inYourInsuranceNetwork) ...[
            const SizedBox(height: 3),
            TherapistSpecificInformationWidget(
              icons: const [
                Icon(
                  Icons.medical_services_outlined,
                  color: UiColors.deepGreen,
                  size: 24,
                ),
              ],
              label: 'In your insurance network',
              fontSize: 15.sp,
            ),
          ],
          if (selectedTherapist.coveredByYourEpa) ...[
            const SizedBox(height: 3),
            TherapistSpecificInformationWidget(
              icons: const [
                Icon(
                  Icons.tag_faces_outlined,
                  color: UiColors.yellowMustard,
                  size: 24,
                ),
              ],
              label: 'Covered by your EAP',
              fontSize: 15.sp,
            ),
          ],
          if (selectedTherapist.vettedByYourDepartment) ...[
            const SizedBox(height: 3),
            GestureDetector(
              onTap: () => showCustomDialog(
                context,
                content: const VettedMeaningDialogContent(),
              ),
              child: TherapistSpecificInformationWidget(
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
        ],
      ),
    );
  }
}
