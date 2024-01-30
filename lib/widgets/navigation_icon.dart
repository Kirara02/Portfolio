import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_porto/config/colors.dart';
import 'package:flutter_web_porto/config/constants.dart';

class NavigationIcon extends StatelessWidget {
  final bool isSelected;
  final String title;
  final String activeIconUrl;
  final String inactiveIconUrl;
  final VoidCallback onPressed;
  const NavigationIcon(
      {super.key,
      required this.title,
      required this.activeIconUrl,
      required this.inactiveIconUrl,
      required this.onPressed,
      required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          gradient: isSelected == true ? AppColors.customGradient : null,
          borderRadius: BorderRadius.circular(AppConstants.kRadiusXL),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
                isSelected == true ? activeIconUrl : inactiveIconUrl),
            const SizedBox(height: 4),
            Text(
              title,
              style: TextStyle(
                fontSize: AppConstants.kFontSizeS,
                fontWeight: FontWeight.w600,
                color: isSelected == true ? AppColors.white : AppColors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
