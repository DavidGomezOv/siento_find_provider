import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:siento_find_therapist/theme/ui_colors.dart';
import 'package:siento_find_therapist/theme/ui_text_style.dart';

class WrittenItemsListWidget extends StatelessWidget {
  const WrittenItemsListWidget({
    super.key,
    required this.writtenItems,
    required this.onDelete,
    required this.onUpdate,
  });

  final List<String> writtenItems;
  final Function(String item) onDelete;
  final Function(String item) onUpdate;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        shrinkWrap: true,
        itemCount: writtenItems.length,
        itemBuilder: (context, index) {
          final currentItem = writtenItems[index];
          return Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Text(
                  '"$currentItem"',
                  style: UiTextStyle.primaryTextStyle.copyWith(fontSize: 15.sp),
                ),
              ),
              IconButton(
                onPressed: () => onUpdate(currentItem),
                icon: const Icon(Icons.edit_outlined, color: UiColors.intenseGrey, size: 28),
              ),
              IconButton(
                onPressed: () => onDelete(currentItem),
                icon: const Icon(Icons.close_outlined, color: UiColors.intenseGrey, size: 28),
              ),
            ],
          );
        },
      ),
    );
  }
}
