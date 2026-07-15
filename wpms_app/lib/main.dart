import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/language_screen.dart';
import 'screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fixora',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/language': (context) => const LanguageScreen(),
        '/onboarding': (context) => const OnboardingScreen(),
      },
    );
  }
}
