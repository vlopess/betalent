import 'package:flutter/material.dart';
import 'package:mobile/view/splash/componentes/SplashPageAnimation.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashPageAnimation(
        onAnimationCompleted: () => Navigator.pushReplacementNamed(context, "/home")
      ),
    );
  }
}