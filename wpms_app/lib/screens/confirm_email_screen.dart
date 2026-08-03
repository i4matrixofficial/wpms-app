import 'package:flutter/material.dart';

class ConfirmEmailScreen extends StatefulWidget {
  const ConfirmEmailScreen({super.key});

  @override
  State<ConfirmEmailScreen> createState() => _ConfirmEmailScreenState();
}

class _ConfirmEmailScreenState extends State<ConfirmEmailScreen> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFFD5C8), Colors.white],
            stops: [0.0, 0.40],
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

                const SizedBox(height: 20),

                // ── Title: Confirm it's you (Figma: Inter 900 24px -2% #0F172A) ──
                const Text(
                  'Confirm it\'s you',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF0F172A),
                    fontFamily: 'Inter',
                    height: 1.3,
                    letterSpacing: -0.48,
                  ),
                ),

                const SizedBox(height: 4),

                // ── Subtitle (Figma: DM Sans 500 14px -1% #7A7A7A) ────────────
                const Text(
                  'Please verify your email to continue',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF7A7A7A),
                    fontFamily: 'Inter',
                    height: 1.4,
                    letterSpacing: -0.14,
                  ),
                ),

                const SizedBox(height: 24),

                // ── EMAIL Label (Figma: Inter 500 16px -2% #000000 80%) ──────
                const Text(
                  'EMAIL',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xCC000000),
                    fontFamily: 'Inter',
                    height: 1.3,
                    letterSpacing: -0.32,
                  ),
                ),

                const SizedBox(height: 8),

                // ── Email Input Container (Figma: Group 22 - Border #000000 20%) ──
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0x1A0F172A),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: const Color(0x33000000),
                      width: 1,
                    ),
                  ),
                  child: TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0F172A),
                      fontFamily: 'Inter',
                      letterSpacing: -0.32,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      hintStyle: const TextStyle(
                        color: Color(0x99000000),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                        letterSpacing: -0.32,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Image.asset(
                          'assets/images/Message icon.png',
                          width: 20,
                          height: 20,
                          fit: BoxFit.contain,
                        ),
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 48,
                        minHeight: 48,
                      ),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 14,
                        horizontal: 8,
                      ),
                      filled: false,
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // ── Continue Button (Figma: Frame 3 - 360×60 R:100 Inter 700 20px) ──
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/create-account');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFEE5F2D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      elevation: 0,
                      padding: const EdgeInsets.all(10),
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Inter',
                        height: 1.3,
                        letterSpacing: -0.4,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
