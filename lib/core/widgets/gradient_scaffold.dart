import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class GradientScaffold extends StatelessWidget {
  final Widget child;
  final Gradient? gradient;
  const GradientScaffold({super.key, required this.child, this.gradient});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: gradient ?? AppColors.backgroundGradient,
      ),
      child: child,
    );
  }
}