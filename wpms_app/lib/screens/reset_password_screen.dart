import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  // 0 = none, 1 = email, 2 = phone
  int _selectedOption = 0;

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

                // ── Back Button (image assets) ────────────────────────────────
                GestureDetector(
                  onTap: () => Navigator.maybePop(context),
                  child: SizedBox(
                    width: 40,
                    height: 40,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        // White circle background
                        Image.asset(
                          'assets/images/to go back cursor circle.png',
                          width: 40,
                          height: 40,
                          fit: BoxFit.contain,
                        ),
                        // Arrow icon
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

                // ── Title (Figma: Inter 900 24px -2% #0F172A) ─────────────────
                const Text(
                  'Reset Your Password',
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
                  'Choose the contact method we should use to help you reset your password.',
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

                // ── Via Email Card ─────────────────────────────────────────────
                _ContactOptionCard(
                  isSelected: _selectedOption == 1,
                  onTap: () => setState(() => _selectedOption = 1),
                  iconAsset: 'assets/images/Message icon.png',
                  label: 'Via email',
                  value: 'ex*******@email.com',
                ),

                const SizedBox(height: 16),

                // ── Via Phone Card ─────────────────────────────────────────────
                _ContactOptionCard(
                  isSelected: _selectedOption == 2,
                  onTap: () => setState(() => _selectedOption = 2),
                  iconAsset: 'assets/images/call icon.png',
                  label: 'Via phone',
                  value: '+94 07* **** 210',
                ),

                const SizedBox(height: 48),

                // ── Continue Button (Figma: Frame 3 - 360×60 R:100 Inter 700 20px) ──
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/confirm-email');
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

                const SizedBox(height: 36),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// Contact option card — uses circle.png as icon background + icon image asset
// ─────────────────────────────────────────────────────────────────────────────
class _ContactOptionCard extends StatelessWidget {
  const _ContactOptionCard({
    required this.isSelected,
    required this.onTap,
    required this.label,
    required this.value,
    required this.iconAsset,
  });

  final bool isSelected;
  final VoidCallback onTap;
  final String label;
  final String value;
  final String iconAsset;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: double.infinity,
        height: 110,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : const Color(0xFFF7F0EE),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: isSelected
                ? const Color(0xFFEE5F2D)
                : Colors.transparent,
            width: 1.5,
          ),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: const Color(0xFFEE5F2D).withValues(alpha: 0.10),
                    blurRadius: 14,
                    offset: const Offset(0, 4),
                  ),
                ]
              : [],
        ),
        child: Row(
          children: [
            // 50×50 circle.png + icon stacked (matches Figma exactly)
            SizedBox(
              width: 50,
              height: 50,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Peach circle background
                  Image.asset(
                    'assets/images/circle.png',
                    width: 50,
                    height: 50,
                    fit: BoxFit.contain,
                  ),
                  // Icon on top
                  Image.asset(
                    iconAsset,
                    width: 24,
                    height: 24,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            // Label + value (Figma specs: Label: 14px 400 #6D6D6D, Value: 16px 500 #000000)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6D6D6D),
                    fontFamily: 'Inter',
                    height: 1.4,
                    letterSpacing: -0.14,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                    fontFamily: 'Inter',
                    height: 1.4,
                    letterSpacing: -0.16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
