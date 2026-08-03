import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFFD5C8), Color(0xFFFFFDFB)],
            stops: [0.0, 1.0],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),

                // ── Back Button (40×40 with image assets) ────────────────────
                GestureDetector(
                  onTap: () => Navigator.maybePop(context),
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Image.asset(
                          'assets/images/to go back cursor circle.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.contain,
                        ),
                        Image.asset(
                          'assets/images/to go back cursor head.png',
                          width: 24,
                          height: 24,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                ),

                const Spacer(flex: 2),

                // ── Illustration (successful icon.png) ───────────────────
                Center(
                  child: Image.asset(
                    'assets/images/successful icon.png',
                    width: 235,
                    height: 240,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 36),

                // ── Title: SUCCESSFUL ────────────────────────────────────
                const Center(
                  child: Text(
                    'SUCCESSFUL',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: Color(0xFF0F172A),
                      height: 1.3,
                      letterSpacing: -0.48,
                    ),
                  ),
                ),
                const SizedBox(height: 12),

                // ── Subtitle ────────────────────────────────────────────
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Congratulations! Your password has been changed. Click continue to login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Color(0xFF7A7A7A),
                      height: 1.4,
                      letterSpacing: -0.16,
                    ),
                  ),
                ),
                const SizedBox(height: 48),

                // ── Back to Login Button ─────────────────────────────────
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate back to welcome/login screen
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/welcome',
                        (route) => false,
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFEE5F2D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                    ),
                    child: const Text(
                      'Back to Login',
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                        color: Colors.white,
                        height: 1.3,
                        letterSpacing: -0.36,
                      ),
                    ),
                  ),
                ),

                const Spacer(flex: 3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}