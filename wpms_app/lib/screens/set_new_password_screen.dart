import 'package:flutter/material.dart';

class SetNewPasswordScreen extends StatefulWidget {
  const SetNewPasswordScreen({super.key});

  @override
  State<SetNewPasswordScreen> createState() => _SetNewPasswordScreenState();
}

class _SetNewPasswordScreenState extends State<SetNewPasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
                const SizedBox(height: 20),

                // ── Title: Set Your New Password ────────────────────────
                const Text(
                  'Set Your New Password',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                    color: Color(0xFF0F172A),
                    height: 1.3,
                    letterSpacing: -0.48,
                  ),
                ),
                const SizedBox(height: 8),

                // ── Subtitle ────────────────────────────────────────────
                const Text(
                  'Enter a strong new password to update',
                  style: TextStyle(
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Color(0xFF7A7A7A),
                    height: 1.4,
                    letterSpacing: -0.14,
                  ),
                ),
                const SizedBox(height: 32),

                // ── PASSWORD Label ──────────────────────────────────────
                const Text(
                  'PASSWORD',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xCC000000),
                    fontFamily: 'Inter',
                    height: 1.3,
                    letterSpacing: -0.28,
                  ),
                ),
                const SizedBox(height: 8),

                // ── PASSWORD Field ──────────────────────────────────────
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                    color: const Color(0x1AFFFFFF),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: const Color(0xFF000000).withOpacity(0.20),
                      width: 1,
                    ),
                  ),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: _obscurePassword,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0F172A),
                      fontFamily: 'Inter',
                      letterSpacing: -0.32,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(
                        color: const Color(0xFF000000).withOpacity(0.50),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                        letterSpacing: -0.32,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Image.asset(
                          'assets/images/pw lock icon.png',
                          width: 20,
                          height: 20,
                          fit: BoxFit.contain,
                        ),
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 48,
                        minHeight: 48,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () => setState(() => _obscurePassword = !_obscurePassword),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Image.asset(
                            'assets/images/show pw eye icon.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      suffixIconConstraints: const BoxConstraints(
                        minWidth: 48,
                        minHeight: 48,
                      ),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),

                // ── CONFIRM PASSWORD Label ──────────────────────────────
                const Text(
                  'CONFIRM PASSWORD',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xCC000000),
                    fontFamily: 'Inter',
                    height: 1.3,
                    letterSpacing: -0.28,
                  ),
                ),
                const SizedBox(height: 8),

                // ── CONFIRM PASSWORD Field ──────────────────────────────
                Container(
                  height: 56,
                  decoration: BoxDecoration(
                    color: const Color(0x1AFFFFFF),
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: const Color(0xFF000000).withOpacity(0.20),
                      width: 1,
                    ),
                  ),
                  child: TextField(
                    controller: _confirmPasswordController,
                    obscureText: _obscureConfirmPassword,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0F172A),
                      fontFamily: 'Inter',
                      letterSpacing: -0.32,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      hintStyle: TextStyle(
                        color: const Color(0xFF000000).withOpacity(0.50),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter',
                        letterSpacing: -0.32,
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14),
                        child: Image.asset(
                          'assets/images/pw lock icon.png',
                          width: 20,
                          height: 20,
                          fit: BoxFit.contain,
                        ),
                      ),
                      prefixIconConstraints: const BoxConstraints(
                        minWidth: 48,
                        minHeight: 48,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () => setState(() => _obscureConfirmPassword = !_obscureConfirmPassword),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Image.asset(
                            'assets/images/show pw eye icon.png',
                            width: 20,
                            height: 20,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      suffixIconConstraints: const BoxConstraints(
                        minWidth: 48,
                        minHeight: 48,
                      ),
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),

                // ── Verify Button ───────────────────────────────────────
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/password-success');
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
                      'Verify',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}