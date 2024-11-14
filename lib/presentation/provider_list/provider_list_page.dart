import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
          child: _PreferencesDialog(),
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

class _PreferencesDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -30,
          left: 10,
          child: CustomPaint(
            size: const Size(60, 60),
            painter: _TrianglePainter(),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Click here to update your preferences and make your search more specific to your needs.',
                style: UiTextStyle.personNameRow
                    .copyWith(color: UiColors.intenseGrey, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 150,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: UiColors.requestButton,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Next',
                    style: UiTextStyle.buttonTextStyle,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class _TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = UiColors.lightPurple
      ..style = PaintingStyle.fill;

    Path path = Path()
      ..moveTo(size.width / 2, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
