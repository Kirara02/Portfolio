import 'package:flutter/material.dart';
import 'package:flutter_web_porto/config/constants.dart';
import 'package:flutter_web_porto/widgets/custom_divider.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              "Contact".toUpperCase(),
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
      ],
    );
  }
}
