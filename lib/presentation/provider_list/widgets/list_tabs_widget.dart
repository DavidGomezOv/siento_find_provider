import 'package:flutter/material.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/shared/state/find_provider_notifier.dart';

class ListTabsWidget extends StatelessWidget {
  const ListTabsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        child: Container(
          height: 40,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: UiColors.white,
          ),
          child: DefaultTabController(
            length: 5,
            child: TabBar(
              labelPadding: EdgeInsets.zero,
              indicatorSize: TabBarIndicatorSize.tab,
              padding: EdgeInsets.zero,
              dividerColor: Colors.transparent,
              indicator: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: UiColors.requestButton,
              ),
              labelColor: UiColors.white,
              tabs: const [
                Text("Therapy"),
                Text("Groups"),
                Text("Psychiatry"),
                Text("Inpatient"),
                Text("All"),
              ],
              onTap: (value) {
                final selectedValue =
                    ProvidersTypes.values.firstWhere((element) => element.index == value);
                print('SELECTED ${selectedValue.toString()}');
              },
            ),
          ),
        ),
      ),
    );
  }
}
