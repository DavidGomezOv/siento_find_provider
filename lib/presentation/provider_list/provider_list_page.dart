import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:siento_find_provider/presentation/provider_list/widgets/instructions_dialog_widget.dart';
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
      (_) => _showOpenDialog(),
    );
    super.initState();
  }

  void _showOpenDialog() {
    showDialog(
      barrierColor: Colors.black12,
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          backgroundColor: UiColors.lightPurple,
          alignment: Alignment.topLeft,
          insetPadding: const EdgeInsets.only(top: kToolbarHeight + 10, left: 30, right: 100),
          child: const PreferencesDialog(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiColors.onboardingBlue,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 14, left: 14),
            child: Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () => context.goNamed(AppRouter.providerPreferencesRouteData.name),
                child: Row(
                  children: [
                    const Icon(Icons.manage_accounts_outlined, color: UiColors.intenseGrey),
                    Text('Preferences',
                        style: UiTextStyle.personNameRow
                            .copyWith(decoration: TextDecoration.underline))
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const CustomTabsWidget(),
          const SizedBox(height: 20),
          const Flexible(child: ProvidersListWidget()),
        ],
      ),
    );
  }
}
