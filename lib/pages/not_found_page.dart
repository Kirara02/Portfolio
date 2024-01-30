import 'package:flutter/material.dart';
import 'package:flutter_web_porto/config/colors.dart';
import 'package:flutter_web_porto/config/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          height: 40,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "404",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: AppConstants.kFontSizeX,
                ),
              ),
              const VerticalDivider(
                color: AppColors.orange,
              ),
              Text(
                "This page could not be found",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: AppConstants.kFontSizeXXL,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
