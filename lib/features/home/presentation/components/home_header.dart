import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_text_styles.dart';
import 'package:musinote/core/widgets/custom_profile_container.dart';
import 'package:musinote/features/logout/presentation/views/logout_view.dart';
import 'package:musinote/features/stats/presentation/ui_screen/StatsScreen.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Evening',
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            SizedBox(height: 8,),
            Text(
              'Music',
              style: AppTextStyles.semiBold20,
            ),
          ],
        ),
        Row(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, LogoutView.routeName);
              },
              child: const Icon(
                Icons.settings_outlined,
                color: Colors.black,
                size: 37,
              ),
            ),
            const SizedBox(width: 15),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, StatsScreen.routeName);
              },
              child: ProfileContainer(),
            ),
          ],
        ),
      ],
    );
  }
}
