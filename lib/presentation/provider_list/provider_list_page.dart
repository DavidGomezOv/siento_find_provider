import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:siento_find_provider/presentation/provider_list/widgets/instructions_dialog_widget.dart';
import 'package:siento_find_provider/presentation/widgets/show_custom_dialog.dart';
import 'package:siento_find_provider/shared/preferences/preferences_di_helper.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/presentation/provider_list/widgets/custom_tabs_widget.dart';
import 'package:siento_find_provider/presentation/provider_list/widgets/providers_list_widget.dart';
import 'package:siento_find_provider/routes/app_router.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class ProviderListPage extends StatefulWidget {
  const ProviderListPage({super.key});

  @override
  State<ProviderListPage> createState() => _ProviderListPageState();
}

class _ProviderListPageState extends State<ProviderListPage> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => showCustomDialog(
        context,
        barrierColor: Colors.black26,
        backgroundColor: UiColors.lightPurple,
        alignment: Alignment.topLeft,
        insetPadding: const EdgeInsets.only(top: kToolbarHeight + 10, left: 30, right: 100),
        content: const PreferencesDialog(),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: UiColors.onboardingBlue,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 14, left: 14),
            child: _PreferencesButtonWidget(),
          ),
          SizedBox(height: 10),
          CustomTabsWidget(),
          SizedBox(height: 14),
          Flexible(child: ProvidersListWidget()),
        ],
      ),
    );
  }
}

class _PreferencesButtonWidget extends ConsumerWidget {
  const _PreferencesButtonWidget();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Align(
      alignment: Alignment.topLeft,
      child: GestureDetector(
        onTap: () {
          ref.read(preferencesNotifierProvider.notifier).getAllPreferences();
          context.goNamed(AppRouter.preferencesRouteData.name);
        },
        child: Row(
          children: [
            const Icon(Icons.manage_accounts_outlined, color: UiColors.intenseGrey),
            Text(
              'Preferences',
              style: UiTextStyle.personNameRow.copyWith(decoration: TextDecoration.underline),
            ),
          ],
        ),
      ),
    );
  }
}
