import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  static const double frameSize = 442; 

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/language');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
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
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
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
                      height: 1.0, // Line height 100%
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
                const SizedBox(height: 10), // 589px - 531px - 48px = 10px
                Text(
                  'FIX • TRUST • DELIVER',
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    height: 1.0, // Line height 100%
                    letterSpacing: 0,
                    color: AppColors.dark,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
