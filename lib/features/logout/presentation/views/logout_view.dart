import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/utils/app_text_styles.dart';
import 'package:musinote/core/widgets/gradient_scaffold.dart';
import 'package:musinote/features/logout/presentation/views/widgets/build_back_to_home_bt.dart';
import 'package:musinote/features/logout/presentation/views/widgets/build_logout_bt.dart';
import 'package:musinote/features/logout/presentation/views/widgets/build_user_info.dart';
import 'widgets/build_footer_text.dart';
import 'widgets/build_logout_logo.dart';

class LogoutView extends StatelessWidget {
  const LogoutView({super.key});

  static const String routeName = '/logout';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientScaffold(
        gradient: AppColors.logoutGradient,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: buildCard(context),
          ),
        ),
      ),
    );
  }

  Widget buildCard(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        decoration: BoxDecoration(
          color: AppColors.gray,
          borderRadius: BorderRadius.circular(52),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 30,
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Logo
            buildLogoutLogo(),
            const SizedBox(height: 16),
            // App name
            Text('MusiNote', style: AppTextStyles.regular25,),
            const SizedBox(height: 6),
            // Subtitle
            const Text('Are you sure you want to log out?', style:  AppTextStyles.regular16, textAlign: TextAlign.center,),
            const SizedBox(height: 38),
            // User info row
            buildUserInfo(),
            const SizedBox(height: 60),
            // Log out button
            buildLogoutBt(),
            const SizedBox(height: 12),
            // Back to Home button
            buildBackToHomeBt(context),
            const SizedBox(height: 20),
            // Footer text
            buildFooterText(),
          ],
        ),
      ),
    );
  }
}