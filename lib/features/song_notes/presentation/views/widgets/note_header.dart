import 'package:flutter/material.dart';
import '../../../../../core/utils/app_text_styles.dart';

class NoteHeader extends StatelessWidget {
  const NoteHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Daily Mix 1', style: AppTextStyles.regular12.copyWith(color:Colors.white)),
        Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.music_note),
              SizedBox(width: 5),
              Text('Notes', style: AppTextStyles.regular18.copyWith(color:Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}
