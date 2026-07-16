import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';
import 'onboarding_screen.dart';

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
                stops: [0.0, 0.60],
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const Spacer(flex: 3),
                Image.asset(
                  'assets/images/logo.png',
                  width: 133,
                  height: 133,
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
                const Spacer(flex: 2),
                // Figma: Group 2 — W:360 H:234 Left:40 Radius:19 Border:1px #0F172A 10%
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: SizedBox(
                    width: 360,
                    height: 234,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(19),
                        border: Border.all(
                          color: AppColors.dark.withOpacity(0.1),
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          // Header row — 234/4 = 58.5px each row
                          Expanded(
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
                          Divider(
                            height: 1,
                            thickness: 1,
                            indent: 30,
                            endIndent: 30,
                            color: AppColors.dark.withOpacity(0.1),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () => _navigateToNext(context),
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
                          Divider(
                            height: 1,
                            thickness: 1,
                            indent: 30,
                            endIndent: 30,
                            color: AppColors.dark.withOpacity(0.1),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () => _navigateToNext(context),
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
                          Divider(
                            height: 1,
                            thickness: 1,
                            indent: 30,
                            endIndent: 30,
                            color: AppColors.dark.withOpacity(0.1),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () => _navigateToNext(context),
                              child: Center(
                                child: Text(
                                  'தமிழ்',
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
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 35),
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
