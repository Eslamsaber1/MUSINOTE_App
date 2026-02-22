import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_colors.dart';
import 'package:musinote/core/utils/app_text_styles.dart';
import 'package:musinote/features/authentication/presentation/ui_screen/login_screen.dart';

Widget buildLogoutBt(BuildContext context) {
  return Container(
    width: double.infinity,
    padding: EdgeInsetsGeometry.symmetric(vertical: 3),
    decoration: BoxDecoration(
      gradient: AppColors.logoutButtonGradient,
      borderRadius: BorderRadius.circular(6),
    ),
    child: ElevatedButton.icon(
      onPressed: () {
        Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route)=> false);
      },
      icon: Icon(Icons.logout, color: Colors.white, size: 30),
      label: Text(
        'Log out',
        style: AppTextStyles.regular18.copyWith(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    ),
  );
}
