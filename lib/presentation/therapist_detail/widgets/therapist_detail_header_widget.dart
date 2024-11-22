import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:siento_find_therapist/theme/ui_text_style.dart';

class TherapistDetailHeaderWidget extends StatelessWidget {
  const TherapistDetailHeaderWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.specialty,
  });

  final String imageUrl;
  final String name;
  final String specialty;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          child: SizedBox(
            width: 120,
            height: 120,
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              placeholder: (context, url) => const Padding(
                padding: EdgeInsets.all(10),
                child: CircularProgressIndicator(),
              ),
              imageUrl: imageUrl,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          name,
          style: UiTextStyle.headerTextStyle.copyWith(fontWeight: FontWeight.bold),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
        Text(
          specialty,
          style: UiTextStyle.sidePanelNameTextStyle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
