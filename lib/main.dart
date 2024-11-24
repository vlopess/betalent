import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/views/home/HomePage.dart';
import 'package:mobile/views/splash/SplashPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BeTalent Mobile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
        scaffoldBackgroundColor: Colors.white,
        textTheme: GoogleFonts.questrialTextTheme(),
        useMaterial3: true,
        dividerColor: Colors.transparent
      ),
      initialRoute: "/splash",
      routes: {
        '/splash': (_) => const SplashPage(),
        '/home' : (_) => const HomePage()
      },
    );
  }
}

