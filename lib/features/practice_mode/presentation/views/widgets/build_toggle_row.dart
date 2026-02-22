import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_text_styles.dart';

Widget buildToggleRow(String label, bool value, ValueChanged<bool> onChanged) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(label, style: AppTextStyles.light16.copyWith(color: Colors.white60)),
      Transform.scale(
        scale: 0.75,
        child: Switch(
          value: value,
          onChanged: onChanged,
          activeThumbColor: Colors.white,
          activeTrackColor: Colors.purple,
          inactiveThumbColor: Colors.white38,
          inactiveTrackColor: Colors.white12,
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
      ),
    ],
  );
}
