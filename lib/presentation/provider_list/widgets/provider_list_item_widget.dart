import 'package:flutter/material.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/domain/models/provider/provider_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:siento_find_provider/presentation/widgets/provider_specific_information_widget.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class ProviderListItemWidget extends StatelessWidget {
  const ProviderListItemWidget({
    super.key,
    required this.currentProvider,
    required this.onTap,
  });

  final ProviderModel currentProvider;
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
                          imageUrl: currentProvider.imageUrl,
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
                            currentProvider.name,
                            style: UiTextStyle.sidePanelNameTextStyle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            currentProvider.specialty,
                            style: UiTextStyle.primaryTextStyle,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          ProviderSpecificInformationWidget(
                            icons: const [
                              Icon(
                                Icons.favorite_border_outlined,
                                color: UiColors.lightPink,
                                size: 18,
                              )
                            ],
                            label: 'Endorsed ${currentProvider.endorsedTimes} times',
                          ),
                          ProviderSpecificInformationWidget(
                            icons: const [
                              Icon(
                                Icons.place_outlined,
                                color: UiColors.iconRed,
                                size: 18,
                              )
                            ],
                            label: '${currentProvider.milesAway} miles from you',
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 8),
                if (currentProvider.connectionMethod.isNotEmpty)
                  ProviderSpecificInformationWidget(
                    icons: [
                      if (currentProvider
                          .getConnectionMethodLabel()
                          .toLowerCase()
                          .contains('person'))
                        const Icon(
                          Icons.handshake_outlined,
                          color: UiColors.intenseGrey,
                          size: 18,
                        ),
                      if (currentProvider
                          .getConnectionMethodLabel()
                          .toLowerCase()
                          .contains('online'))
                        const Icon(
                          Icons.video_camera_front_outlined,
                          color: UiColors.intenseGrey,
                          size: 18,
                        ),
                    ],
                    label: currentProvider.getConnectionMethodLabel(),
                  ),
                if (currentProvider.inYourInsuranceNetwork)
                  const ProviderSpecificInformationWidget(
                    icons: [
                      Icon(
                        Icons.medical_services_outlined,
                        color: UiColors.deepGreen,
                        size: 18,
                      )
                    ],
                    label: 'In your insurance network',
                  ),
                if (currentProvider.coveredByYourEpa)
                  const ProviderSpecificInformationWidget(
                    icons: [
                      Icon(
                        Icons.tag_faces_outlined,
                        color: UiColors.yellowMustard,
                        size: 18,
                      )
                    ],
                    label: 'Covered by your EAP',
                  ),
                if (currentProvider.vettedByYourDepartment)
                  const ProviderSpecificInformationWidget(
                    icons: [
                      Icon(
                        Icons.check_circle_outline_rounded,
                        color: UiColors.lightBlue,
                        size: 18,
                      )
                    ],
                    label: 'Vetted by your department',
                  ),
                //TODO show preferences here
              ],
            ),
          ),
        ),
      ),
    );
  }
}
