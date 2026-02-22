import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_text_styles.dart';
import 'package:musinote/features/artist_profile/presentation/views/artist_profile_view.dart';

class SongInfoSection extends StatelessWidget {
  const SongInfoSection({super.key, this.textColor = Colors.black,});

  final Color textColor;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: () => Navigator.pushNamed(context, ArtistProfileView.routeName),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(27),
              child: Image.asset(
                'assets/images/adele.jpg',
                width: screenWidth * 0.25,
                height: screenHeight * 0.12,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 69),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Adele', overflow:TextOverflow.ellipsis, style: AppTextStyles.regular18.copyWith(color:textColor),),
                Text('Set Fire to the Rain', overflow:TextOverflow.ellipsis, style: AppTextStyles.regular16.copyWith(color:textColor),),
                Text('21', overflow:TextOverflow.ellipsis, style: AppTextStyles.regular16.copyWith(color:textColor),),
                Text('Piano', overflow:TextOverflow.ellipsis, style: AppTextStyles.regular16.copyWith(color:textColor),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
