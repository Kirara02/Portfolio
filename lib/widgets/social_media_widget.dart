import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_porto/config/colors.dart';
import 'package:flutter_web_porto/config/constants.dart';

class SocialMediaWidget extends StatelessWidget {
  final String svgUrl;
  final String? sosmedUrl;
  final VoidCallback? onTap;
  const SocialMediaWidget(
      {super.key, required this.svgUrl, this.sosmedUrl, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppConstants.kRadiusM),
          color: AppColors.primaryColor,
        ),
        child: Center(
          child: SvgPicture.asset(svgUrl),
        ),
      ),
    );
  }
}
