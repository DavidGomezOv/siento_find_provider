import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:siento_find_therapist/core/enums.dart';
import 'package:siento_find_therapist/shared/therapists/find_therapist_di_helper.dart';
import 'package:siento_find_therapist/theme/ui_colors.dart';
import 'package:siento_find_therapist/presentation/therapist_list/widgets/custom_tab_item_widget.dart';

class CustomTabsWidget extends StatelessWidget {
  const CustomTabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final provider = ref.watch(findTherapistsNotifierProvider);
        return provider.when(
          loading: () => const SizedBox.shrink(),
          loaded: (_, __, selectedFilter) {
            return Container(
              decoration: BoxDecoration(
                color: UiColors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: CustomTabItemWidget(
                      therapistType: TherapistType.therapy,
                      onTap: (therapistType) => ref
                          .read(findTherapistsNotifierProvider.notifier)
                          .filterListByTypes(filterType: therapistType),
                      isSelected: selectedFilter == TherapistType.therapy,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: CustomTabItemWidget(
                      therapistType: TherapistType.group,
                      onTap: (therapistType) => ref
                          .read(findTherapistsNotifierProvider.notifier)
                          .filterListByTypes(filterType: therapistType),
                      isSelected: selectedFilter == TherapistType.group,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: CustomTabItemWidget(
                      therapistType: TherapistType.psychiatry,
                      onTap: (therapistType) => ref
                          .read(findTherapistsNotifierProvider.notifier)
                          .filterListByTypes(filterType: therapistType),
                      isSelected: selectedFilter == TherapistType.psychiatry,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: CustomTabItemWidget(
                      therapistType: TherapistType.inpatient,
                      onTap: (therapistType) => ref
                          .read(findTherapistsNotifierProvider.notifier)
                          .filterListByTypes(filterType: therapistType),
                      isSelected: selectedFilter == TherapistType.inpatient,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: CustomTabItemWidget(
                      therapistType: TherapistType.all,
                      onTap: (therapistType) => ref
                          .read(findTherapistsNotifierProvider.notifier)
                          .filterListByTypes(filterType: therapistType),
                      isSelected: selectedFilter == TherapistType.all,
                      lastItem: true,
                    ),
                  ),
                ],
              ),
            );
          },
          failedToLoad: (_) => const SizedBox.shrink(),
        );
      },
    );
  }
}
