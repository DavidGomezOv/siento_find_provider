import 'package:flutter/material.dart';
import 'package:siento_find_therapist/theme/ui_colors.dart';
import 'package:siento_find_therapist/theme/ui_text_style.dart';

class PreferencesDialog extends StatelessWidget {
  const PreferencesDialog({super.key});

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
      ..moveTo(size.width / 1.8, 2)
      ..conicTo(
        Offset(size.width / 2, 0).dx,
        Offset(size.width / 2, 0).dy,
        Offset(size.width / 2.2, 2).dx,
        Offset(size.width / 2.2, 2).dy,
        2,
      )
      ..lineTo(size.width / 2.2, 2)
      ..lineTo(0, size.height)
      ..lineTo(20, size.height)
      ..lineTo(size.width, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  void moveConicTo(Path path, Offset destination, Offset controlPoint) {
    path.conicTo(
      controlPoint.dx,
      controlPoint.dy,
      destination.dx,
      destination.dy,
      2,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}