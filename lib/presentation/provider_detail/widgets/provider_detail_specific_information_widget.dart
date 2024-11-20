import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siento_find_provider/presentation/provider_detail/widgets/vetted_meaning_dialog_content.dart';
import 'package:siento_find_provider/presentation/widgets/show_custom_dialog.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/domain/models/provider/provider_model.dart';
import 'package:siento_find_provider/presentation/widgets/provider_specific_information_widget.dart';

class ProviderDetailIndicatorsWidget extends StatelessWidget {
  const ProviderDetailIndicatorsWidget({
    super.key,
    required this.selectedProvider,
  });

  final ProviderModel selectedProvider;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProviderSpecificInformationWidget(
            icons: const [
              Icon(
                Icons.favorite_border_outlined,
                color: UiColors.lightPink,
                size: 24,
              )
            ],
            label: 'Endorsed ${selectedProvider.endorsedTimes} times',
            fontSize: 15.sp,
          ),
          const SizedBox(height: 3),
          ProviderSpecificInformationWidget(
            icons: const [
              Icon(
                Icons.place_outlined,
                color: UiColors.iconRed,
                size: 24,
              )
            ],
            label: '${selectedProvider.milesAway} miles from you',
            fontSize: 15.sp,
          ),
          if (selectedProvider.connectionMethod.isNotEmpty) ...[
            const SizedBox(height: 3),
            ProviderSpecificInformationWidget(
              icons: [
                if (selectedProvider.getConnectionMethodLabel().toLowerCase().contains('person'))
                  const Icon(
                    Icons.handshake_outlined,
                    color: UiColors.intenseGrey,
                    size: 24,
                  ),
                if (selectedProvider.getConnectionMethodLabel().toLowerCase().contains('online'))
                  const Icon(
                    Icons.video_camera_front_outlined,
                    color: UiColors.intenseGrey,
                    size: 24,
                  ),
              ],
              label: selectedProvider.getConnectionMethodLabel(),
              fontSize: 15.sp,
            ),
          ],
          if (selectedProvider.inYourInsuranceNetwork) ...[
            const SizedBox(height: 3),
            ProviderSpecificInformationWidget(
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
          if (selectedProvider.coveredByYourEpa) ...[
            const SizedBox(height: 3),
            ProviderSpecificInformationWidget(
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
          if (selectedProvider.vettedByYourDepartment) ...[
            const SizedBox(height: 3),
            GestureDetector(
              onTap: () => showCustomDialog(
                context,
                content: const VettedMeaningDialogContent(),
              ),
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
        ],
      ),
    );
  }
}
