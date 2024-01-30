import 'package:flutter/material.dart';
import 'package:flutter_web_porto/config/colors.dart';
import 'package:flutter_web_porto/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          primaryColor: AppColors.primaryColor,
          textTheme: GoogleFonts.ralewayTextTheme(Theme.of(context).textTheme)),
      home: const HomePage(),
    );
  }
}
