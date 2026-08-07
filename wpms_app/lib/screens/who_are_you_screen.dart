import 'package:flutter/material.dart';

class WhoAreYouScreen extends StatefulWidget {
  const WhoAreYouScreen({super.key});

  @override
  State<WhoAreYouScreen> createState() => _WhoAreYouScreenState();
}

class _WhoAreYouScreenState extends State<WhoAreYouScreen> {
  String? selected; // 'customer' or 'worker'

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white, Color(0xFFFFE5D8)],
            stops: [0.3, 1.0],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                // Title
                const Text(
                  'Who are you?',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Color(0xFF0F172A),
                    fontFamily: 'Inter',
                    height: 1.3,
                    letterSpacing: -0.8,
                  ),
                ),
                const SizedBox(height: 4),

                // Subtitle
                const Text(
                  'Choose how you\'ll use Fixora',
                  style: TextStyle(
                    color: Color(0x990F172A),
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter',
                    height: 1.4,
                    letterSpacing: -0.2,
                  ),
                ),
                const SizedBox(height: 20),

                // Customer Card
                GestureDetector(
                  onTap: () => setState(() => selected = 'customer'),
                  child: Container(
                    width: double.infinity,
                    height: 276,
                    decoration: BoxDecoration(
                      color: const Color(0x33C9C9C9),
                      borderRadius: BorderRadius.circular(40),
                      border: selected == 'customer'
                          ? Border.all(color: const Color(0xFFEE5F2D), width: 2)
                          : null,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/customer.png',
                          width: 274,
                          height: 182,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "I'm a Customer",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF0F172A),
                            fontFamily: 'Inter',
                            height: 1.3,
                            letterSpacing: -0.4,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Find and book trusted workers near me.',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0x990F172A),
                            fontFamily: 'Inter',
                            height: 1.3,
                            letterSpacing: -0.28,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Worker Card
                GestureDetector(
                  onTap: () => setState(() => selected = 'worker'),
                  child: Container(
                    width: double.infinity,
                    height: 276,
                    decoration: BoxDecoration(
                      color: const Color(0x33C9C9C9),
                      borderRadius: BorderRadius.circular(40),
                      border: selected == 'worker'
                          ? Border.all(color: const Color(0xFFEE5F2D), width: 2)
                          : null,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/worker.png',
                          width: 274,
                          height: 182,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "I'm a Worker",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF0F172A),
                            fontFamily: 'Inter',
                            height: 1.3,
                            letterSpacing: -0.4,
                          ),
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Get jobs and grow my income.',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0x990F172A),
                            fontFamily: 'Inter',
                            height: 1.3,
                            letterSpacing: -0.28,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const Spacer(),

                // Next Button
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: selected != null
                        ? () {
                            Navigator.pushNamed(context, '/reset-password');
                          }
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFEE5F2D),
                      disabledBackgroundColor: const Color(0xFFEE5F2D),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                      elevation: 0,
                      padding: const EdgeInsets.all(10),
                    ),
                    child: const Text(
                      'Next',
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
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}