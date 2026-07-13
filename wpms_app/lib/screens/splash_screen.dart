import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  static const double frameSize = 442; // Figma frame reference size

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final w = constraints.maxWidth;
          final h = constraints.maxHeight;

          return Stack(
            children: [
              Positioned(
                left: (-1 / frameSize) * w,
                top: (-221 / frameSize) * h,
                child: _glowCircle(size: (442 / frameSize) * w),
              ),
              Positioned(
                left: (66 / frameSize) * w,
                top: (261 / frameSize) * h,
                child: _glowCircle(size: (307 / frameSize) * w),
              ),
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/logo.png',
                      width: 120,
                      height: 120,
                    ),
                    const SizedBox(height: 16),
                    RichText(
                      text: TextSpan(
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w900,
                          fontSize: 40,
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
                    const SizedBox(height: 6),
                    Text(
                      'FIX • TRUST • DELIVER',
                      style: GoogleFonts.inter(
                        fontSize: 12,
                        letterSpacing: 1.2,
                        color: AppColors.dark,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _glowCircle({required double size}) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            Color(0xFFEE5F2D),
            Color(0x00EE5F2D),
          ],
          stops: [0.0, 1.0],
        ),
      ),
    );
  }
}
