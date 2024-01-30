import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_porto/config/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class WhatIDoCard extends StatelessWidget {
  final String title;
  final String desc;
  final String svgUrl;
  final Color color;
  const WhatIDoCard(
      {super.key,
      required this.title,
      required this.desc,
      required this.svgUrl,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(AppConstants.kRadiusM),
      ),
      constraints: const BoxConstraints(
        maxHeight: 169,
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(svgUrl),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: AppConstants.kFontSizeXXL,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            desc,
            overflow: TextOverflow.ellipsis,
            maxLines: 6,
            style: GoogleFonts.raleway(
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
