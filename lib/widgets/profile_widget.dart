import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_web_porto/config/colors.dart';
import 'package:flutter_web_porto/config/constants.dart';
import 'package:flutter_web_porto/widgets/profile_list_tile.dart';
import 'package:flutter_web_porto/widgets/social_media_widget.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 120,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius:
                          BorderRadius.circular(AppConstants.kRadiusXL)),
                ),
              ),
            ],
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.3,
            child: Column(
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppConstants.kRadiusL),
                    child: Image.asset(
                      "assets/images/noir.jpg",
                      width: 180,
                      height: 180,
                    ),
                  ),
                ),
                const SizedBox(height: 14),
                Text(
                  "Kirara Bernstein",
                  style: GoogleFonts.raleway(
                    fontSize: AppConstants.kFontSizeXX,
                    fontWeight: FontWeight.bold,
                    color: AppColors.dark,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Mobile Developer",
                  style: GoogleFonts.raleway(
                    fontSize: AppConstants.kFontSizeL,
                    fontWeight: FontWeight.w500,
                    color: AppColors.dark.withOpacity(0.5),
                  ),
                ),
                const SizedBox(height: 6),
                const Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialMediaWidget(svgUrl: "assets/icons/facebook.svg"),
                    SizedBox(width: 8),
                    SocialMediaWidget(svgUrl: "assets/icons/linkedin.svg"),
                    SizedBox(width: 8),
                    SocialMediaWidget(svgUrl: "assets/icons/twitter.svg"),
                    SizedBox(width: 8),
                    SocialMediaWidget(
                      svgUrl: "assets/icons/github.svg",
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Container(
                    padding: const EdgeInsets.all(32),
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius:
                          BorderRadius.circular(AppConstants.kRadiusXL),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const ProfileListTile(
                          title: "Phone",
                          value: "+6281313320710",
                          iconUrl: "assets/icons/phone.svg",
                        ),
                        const ProfileListTile(
                          title: "Email",
                          value: "fahtul.singaparna@gmail.com",
                          iconUrl: "assets/icons/mail.svg",
                        ),
                        const ProfileListTile(
                          title: "Location",
                          value: "West Java, Tasikmalaya",
                          iconUrl: "assets/icons/location.svg",
                        ),
                        Container(
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(AppConstants.kRadiusXL),
                              gradient: AppColors.customGradient),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              minimumSize: Size(200, 50),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    AppConstants.kRadiusXL),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset("assets/icons/download.svg"),
                                const SizedBox(width: 10),
                                const Text(
                                  "Download Resume",
                                  style: TextStyle(
                                    fontSize: AppConstants.kFontSizeS,
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
