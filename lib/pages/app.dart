import 'package:flutter/material.dart';
import 'package:flutter_web_porto/config/colors.dart';
import 'package:flutter_web_porto/pages/content_page.dart';
import 'package:flutter_web_porto/widgets/profile_widget.dart';
import 'package:intl/intl.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 768,
              padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 50),
              child: const Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ProfileWidget(),
                  SizedBox(width: 10),
                  ContentPage(),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Text(
                    "${DateFormat("yyyy").format(DateTime.now())} \u00a9 Kirara Bernstein"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
