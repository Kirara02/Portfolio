import 'package:flutter/material.dart';
import 'package:flutter_web_porto/config/colors.dart';
import 'package:flutter_web_porto/config/constants.dart';
import 'package:flutter_web_porto/widgets/custom_divider.dart';
import 'package:flutter_web_porto/widgets/what_i_do_card.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "About Me".toUpperCase(),
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: AppConstants.kFontSizeXXX,
              ),
            ),
            const SizedBox(
              width: 32,
            ),
            const CustomDivider(),
          ],
        ),
        const SizedBox(height: 12),
        const Text(
          "Hello there! I'm thrilled to welcome you to my portfolio. I am a passionate and versatile full-stack developer with a keen interest in exploring the latest cutting-edge technologies. My journey in the world of web development has been nothing short of exhilarating, and I constantly strive to enhance my skills and embrace emerging trends in the industry.",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            wordSpacing: 1.3,
            color: AppColors.black,
            height: 2,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          "What I do",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: AppConstants.kFontSizeXX,
          ),
        ),
        const SizedBox(height: 12),
        const Wrap(
          spacing: 10,
          runSpacing: 10,
          children: [
            WhatIDoCard(
              title: "Mobile Developer",
              desc:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              svgUrl: "assets/icons/app.svg",
              color: AppColors.grey3,
            ),
            WhatIDoCard(
              title: "Backend Developer",
              desc:
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              svgUrl: "assets/icons/code.svg",
              color: AppColors.grey2,
            ),
          ],
        )
      ],
    );
  }
}
