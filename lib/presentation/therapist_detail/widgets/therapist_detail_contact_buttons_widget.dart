import 'package:flutter/material.dart';
import 'package:siento_find_therapist/theme/ui_colors.dart';
import 'package:siento_find_therapist/theme/ui_text_style.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class TherapistDetailContactButtonsWidget extends StatelessWidget {
  const TherapistDetailContactButtonsWidget({
    super.key,
    required this.phone,
    required this.email,
  });

  final String phone;
  final String email;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (phone.isNotEmpty)
            Expanded(
              child: SizedBox(
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(
                      side: BorderSide(color: UiColors.requestButton, width: 1),
                    ),
                    backgroundColor: UiColors.white,
                  ),
                  onPressed: () async => await url_launcher.launchUrl(
                    Uri.parse('mailto:${email.trim().toLowerCase()}'),
                    mode: url_launcher.LaunchMode.externalApplication,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.forward_to_inbox, color: UiColors.requestButton),
                      const SizedBox(width: 6),
                      Text(
                        'Email',
                        style: UiTextStyle.buttonTextStyle.copyWith(color: UiColors.requestButton),
                      )
                    ],
                  ),
                ),
              ),
            ),
          const SizedBox(width: 20),
          if (email.isNotEmpty)
            Expanded(
              child: SizedBox(
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: UiColors.requestButton,
                  ),
                  onPressed: () async => await url_launcher.launchUrl(
                    Uri.parse('tel:${email.trim().toLowerCase()}'),
                    mode: url_launcher.LaunchMode.externalApplication,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.call_outlined, color: UiColors.white),
                      const SizedBox(width: 6),
                      Text(
                        'Call',
                        style: UiTextStyle.buttonTextStyle,
                      )
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
