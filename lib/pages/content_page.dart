import 'package:flutter/material.dart';
import 'package:flutter_web_porto/config/colors.dart';
import 'package:flutter_web_porto/config/constants.dart';
import 'package:flutter_web_porto/pages/contact_page.dart';
import 'package:flutter_web_porto/pages/home_page.dart';
import 'package:flutter_web_porto/pages/resume_page.dart';
import 'package:flutter_web_porto/pages/work_page.dart';
import 'package:flutter_web_porto/widgets/navigation_icon.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({super.key});

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  String currentPage = 'home';

  Widget _buildContent(String page) {
    switch (page) {
      case "home":
        return const HomeSection();
      case "resume":
        return const ResumeSection();
      case "work":
        return const WorkSection();
      case "contact":
        return const ContactSection();
    }

    return const HomeSection();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(AppConstants.kRadiusXL),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 2,
                    offset: const Offset(0, 1),
                    color: AppColors.black.withOpacity(0.2),
                  ),
                  BoxShadow(
                    blurRadius: 3,
                    offset: const Offset(0, 1),
                    color: AppColors.black.withOpacity(0.15),
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  NavigationIcon(
                    title: "Home",
                    activeIconUrl: "assets/icons/home_active.svg",
                    inactiveIconUrl: "assets/icons/home_inactive.svg",
                    onPressed: () {
                      setState(() {
                        currentPage = "home";
                      });
                    },
                    isSelected: currentPage == 'home' ? true : false,
                  ),
                  const SizedBox(width: 40),
                  NavigationIcon(
                    title: "Resume",
                    activeIconUrl: "assets/icons/resume_active.svg",
                    inactiveIconUrl: "assets/icons/resume_inactive.svg",
                    onPressed: () {
                      setState(() {
                        currentPage = "resume";
                      });
                    },
                    isSelected: currentPage == 'resume' ? true : false,
                  ),
                  const SizedBox(width: 40),
                  NavigationIcon(
                    title: "Work",
                    activeIconUrl: "assets/icons/work_active.svg",
                    inactiveIconUrl: "assets/icons/work_inactive.svg",
                    onPressed: () {
                      setState(() {
                        currentPage = "work";
                      });
                    },
                    isSelected: currentPage == 'work' ? true : false,
                  ),
                  const SizedBox(width: 40),
                  NavigationIcon(
                    title: "Contact",
                    activeIconUrl: "assets/icons/contact_active.svg",
                    inactiveIconUrl: "assets/icons/contact_inactive.svg",
                    onPressed: () {
                      setState(() {
                        currentPage = "contact";
                      });
                    },
                    isSelected: currentPage == 'contact' ? true : false,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(AppConstants.kRadiusXL),
              ),
              child: _buildContent(currentPage),
            ),
          )
        ],
      ),
    );
  }
}
