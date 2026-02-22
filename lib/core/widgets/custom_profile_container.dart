import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 38,
      height: 38,
      decoration: BoxDecoration(
        color: Color(0xffEADDFF),
        shape: BoxShape.circle,
      ),
      child:SvgPicture.asset('assets/icons/Avatar Placeholder.svg',width: 24, height: 24, fit: BoxFit.scaleDown),
    );
  }
}
