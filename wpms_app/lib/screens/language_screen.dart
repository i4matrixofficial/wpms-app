import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          // Full screen background gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFF4A38A), // Deep salmon/coral matching Figma
                  Colors.white,
                ],
                stops: [0.0, 0.5],
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const Spacer(flex: 8),
                 Transform.rotate(
                  angle: -18.01 * math.pi / 180,
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 133,
                    height: 133,
                  ),
                ),
                const SizedBox(height: 55),
                RichText(
                  text: TextSpan(
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                      height: 1.0,
                      letterSpacing: 0,
                    ),
                    children: const [
                      TextSpan(
                        text: 'FIXO',
                        style: TextStyle(color: AppColors.orange),
                      ),
                      TextSpan(
                        text: 'RA',
                        style: TextStyle(color: AppColors.dark),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'FIX • TRUST • DELIVER',
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    height: 1.0,
                    letterSpacing: 0,
                    color: AppColors.dark,
                  ),
                ),
                const SizedBox(height: 50),
                // Figma: Group 2 / Rectangle 74 — W:360 H:234 Radius:19 Border:1px #0F172A 10%
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    width: 360,
                    height: 234,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(19),
                      border: Border.all(
                        color: const Color(0x1A0F172A),
                        width: 1,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Row 1: Select your language
                        SizedBox(
                          height: 57,
                          child: Center(
                            child: Text(
                              'Select your language',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w800,
                                fontSize: 15,
                                height: 1.0,
                                letterSpacing: 0,
                                color: AppColors.dark,
                              ),
                            ),
                          ),
                        ),
                        // Line 17 (Figma: W:300 H:1 #0F172A 10%)
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 30),
                          height: 1,
                          color: const Color(0x1A0F172A),
                        ),
                        // Row 2: English
                        SizedBox(
                          height: 57,
                          child: InkWell(
                            onTap: () => _navigateToNext(context),
                            borderRadius: BorderRadius.circular(8),
                            child: Center(
                              child: Text(
                                'English',
                                style: GoogleFonts.inter(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  height: 1.0,
                                  letterSpacing: 0,
                                  color: AppColors.dark,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Line 20 (Figma: W:300 H:1 #0F172A 10%)
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 30),
                          height: 1,
                          color: const Color(0x1A0F172A),
                        ),
                        // Row 3: Sinhala
                        SizedBox(
                          height: 57,
                          child: InkWell(
                            onTap: () => _navigateToNext(context),
                            borderRadius: BorderRadius.circular(8),
                            child: Center(
                              child: Text(
                                'සිංහල',
                                style: GoogleFonts.notoSansSinhala(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  height: 1.0,
                                  letterSpacing: 0,
                                  color: AppColors.dark,
                                ),
                              ),
                            ),
                          ),
                        ),
                        // Line 21 (Figma: W:300 H:1 #0F172A 10%)
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 30),
                          height: 1,
                          color: const Color(0x1A0F172A),
                        ),
                        // Row 4: Tamil
                        SizedBox(
                          height: 57,
                          child: InkWell(
                            onTap: () => _navigateToNext(context),
                            borderRadius: BorderRadius.circular(8),
                            child: Center(
                              child: Text(
                                'தமிழ்',
                                style: GoogleFonts.notoSansTamil(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  height: 1.0,
                                  letterSpacing: 0,
                                  color: AppColors.dark,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(flex: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToNext(BuildContext context) {
    Navigator.pushNamed(context, '/onboarding');
  }
}
