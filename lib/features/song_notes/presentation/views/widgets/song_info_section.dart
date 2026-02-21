import 'package:flutter/material.dart';
import 'package:musinote/core/utils/app_text_styles.dart';
import 'package:musinote/features/artist_profile/presentation/views/artist_profile_view.dart';

class SongInfoSection extends StatelessWidget {
  const SongInfoSection({super.key,});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ArtistProfileView.routeName);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(27),
              child: Image.asset(
                'assets/images/adele.jpg',
                width: screenWidth * 0.25,
                height: screenHeight * 0.12,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 69),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Adele', style: AppTextStyles.regular16.copyWith(color:Colors.black),),
              Text('Set Fire to the Rain', style: AppTextStyles.regular16.copyWith(color:Colors.black),),
              Text('Album: 21', style: AppTextStyles.regular16.copyWith(color:Colors.black),),
              Text('Piano', style: AppTextStyles.regular16.copyWith(color:Colors.black),),
            ],
          ),
        ],
      ),
    );
  }
}
