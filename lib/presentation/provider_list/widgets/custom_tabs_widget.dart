import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:siento_find_provider/core/enums.dart';
import 'package:siento_find_provider/shared/providers/find_provider_di_helper.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/presentation/provider_list/widgets/custom_tab_item_widget.dart';

class CustomTabsWidget extends StatelessWidget {
  const CustomTabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final provider = ref.watch(findProviderNotifierProvider);
        return provider.when(
          loading: () => const SizedBox.shrink(),
          loaded: (providers, filteredList, selectedFilter) {
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
                      providerType: ProviderType.therapy,
                      onTap: (providerType) => ref
                          .read(findProviderNotifierProvider.notifier)
                          .filterListByTypes(filterType: providerType),
                      isSelected: selectedFilter == ProviderType.therapy,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: CustomTabItemWidget(
                      providerType: ProviderType.group,
                      onTap: (providerType) => ref
                          .read(findProviderNotifierProvider.notifier)
                          .filterListByTypes(filterType: providerType),
                      isSelected: selectedFilter == ProviderType.group,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: CustomTabItemWidget(
                      providerType: ProviderType.psychiatry,
                      onTap: (providerType) => ref
                          .read(findProviderNotifierProvider.notifier)
                          .filterListByTypes(filterType: providerType),
                      isSelected: selectedFilter == ProviderType.psychiatry,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: CustomTabItemWidget(
                      providerType: ProviderType.inpatient,
                      onTap: (providerType) => ref
                          .read(findProviderNotifierProvider.notifier)
                          .filterListByTypes(filterType: providerType),
                      isSelected: selectedFilter == ProviderType.inpatient,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: CustomTabItemWidget(
                      providerType: ProviderType.all,
                      onTap: (providerType) => ref
                          .read(findProviderNotifierProvider.notifier)
                          .filterListByTypes(filterType: providerType),
                      isSelected: selectedFilter == ProviderType.all,
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
