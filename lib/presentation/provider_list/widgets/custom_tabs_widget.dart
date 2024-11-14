import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:siento_find_provider/core/enums.dart';
import 'package:siento_find_provider/shared/find_provider_di_helper.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/presentation/provider_list/widgets/custom_tab_item_widget.dart';

class CustomTabsWidget extends StatelessWidget {
  const CustomTabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final provider = ref.watch(notifierProvider);
        return provider.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (providers, filteredList, selectedFilter) {
            return Container(
              decoration: BoxDecoration(
                color: UiColors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              clipBehavior: Clip.antiAlias,
              margin: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: CustomTabItemWidget(
                      providerType: ProviderType.therapy,
                      onTap: (providerType) => ref
                          .read(notifierProvider.notifier)
                          .filterListByTypes(filterType: providerType),
                      isSelected: selectedFilter == ProviderType.therapy,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: CustomTabItemWidget(
                      providerType: ProviderType.group,
                      onTap: (providerType) => ref
                          .read(notifierProvider.notifier)
                          .filterListByTypes(filterType: providerType),
                      isSelected: selectedFilter == ProviderType.group,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: CustomTabItemWidget(
                      providerType: ProviderType.psychiatry,
                      onTap: (providerType) => ref
                          .read(notifierProvider.notifier)
                          .filterListByTypes(filterType: providerType),
                      isSelected: selectedFilter == ProviderType.psychiatry,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: CustomTabItemWidget(
                      providerType: ProviderType.inpatient,
                      onTap: (providerType) => ref
                          .read(notifierProvider.notifier)
                          .filterListByTypes(filterType: providerType),
                      isSelected: selectedFilter == ProviderType.inpatient,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: CustomTabItemWidget(
                      providerType: ProviderType.all,
                      onTap: (providerType) => ref
                          .read(notifierProvider.notifier)
                          .filterListByTypes(filterType: providerType),
                      isSelected: selectedFilter == ProviderType.all,
                      lastItem: true,
                    ),
                  ),
                ],
              ),
            );
          },
          failedToLoad: (errorMessage) => Text(errorMessage),
        );
      },
    );
  }
}
