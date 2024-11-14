import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:siento_find_provider/theme/ui_colors.dart';
import 'package:siento_find_provider/domain/models/provider_model.dart';
import 'package:siento_find_provider/presentation/provider_detail/widgets/provider_detail_additional_information_widget.dart';
import 'package:siento_find_provider/presentation/provider_detail/widgets/provider_detail_contact_buttons_widget.dart';
import 'package:siento_find_provider/presentation/provider_detail/widgets/provider_detail_header_widget.dart';
import 'package:siento_find_provider/presentation/provider_detail/widgets/provider_detail_specific_information_widget.dart';
import 'package:siento_find_provider/routes/app_router.dart';
import 'package:siento_find_provider/theme/ui_text_style.dart';

class ProviderDetailPage extends StatelessWidget {
  const ProviderDetailPage({super.key, required this.selectedProvider});

  final ProviderModel selectedProvider;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiColors.onboardingBlue,
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () => context.goNamed(AppRouter.providerListRouteData.name),
                  child: Row(
                    children: [
                      const Icon(Icons.arrow_back_rounded, color: UiColors.intenseGrey),
                      Text('Back', style: UiTextStyle.personNameRow)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ProviderDetailHeaderWidget(
                imageUrl: selectedProvider.imageUrl,
                name: selectedProvider.name,
                specialty: selectedProvider.specialty,
              ),
              const SizedBox(height: 18),
              ProviderDetailIndicatorsWidget(selectedProvider: selectedProvider),
              const SizedBox(height: 15),
              Text(
                selectedProvider.description,
                style: UiTextStyle.tabsTextStyle,
              ),
              const SizedBox(height: 18),
              ProviderDetailContactButtonsWidget(
                phone: selectedProvider.phone,
                email: selectedProvider.email,
              ),
              ProviderDetailAdditionalInformationWidget(selectedProvider: selectedProvider)
            ],
          ),
        ),
      ),
    );
  }
}
