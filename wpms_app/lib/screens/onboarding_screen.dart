import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/app_colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Full screen background gradient — matches Figma salmon → white
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFF4A38A),
                  Colors.white,
                ],
                stops: [0.0, 0.60],
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    children: [
                      _buildPage(
                        title: 'All Services. One App.',
                        description:
                            'Plumbing, electrical, cleaning, and more\n– all in one place.',
                        imagePath: 'assets/images/man.png',
                      ),
                      _buildPage(
                        title: 'Find Trusted Workers',
                        description:
                            'Discover verified & skilled professionals\nnear you instantly.',
                        imagePath: 'assets/images/location map.png',
                      ),
                      _buildPage(
                        title: 'Safe. Secure. Reliable.',
                        description:
                            'Secure payments, real-time tracking,\nand 24/7 support.',
                        imagePath: 'assets/images/safe icon.png',
                      ),
                    ],
                  ),
                ),
                // Bottom bar — dots + button
                Padding(
                  padding: const EdgeInsets.only(
                      left: 40.0, right: 40.0, bottom: 40.0, top: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Pagination dots
                      Row(
                        children: List.generate(
                          3,
                          (index) => AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin:
                                EdgeInsets.only(right: index == 2 ? 0 : 6),
                            height: 8,
                            width: _currentPage == index ? 24 : 8,
                            decoration: BoxDecoration(
                              color: _currentPage == index
                                  ? AppColors.orange
                                  : const Color(0xFFCBD5E1),
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                        ),
                      ),
                      // Next / Get Started button
                      GestureDetector(
                        onTap: () {
                          if (_currentPage < 2) {
                            _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          width: _currentPage == 2 ? 176 : 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: AppColors.orange,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Center(
                            child: _currentPage == 2
                                ? Text(
                                    'Get Started',
                                    style: GoogleFonts.inter(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                : const Icon(
                                    Icons.arrow_forward_rounded,
                                    color: Colors.white,
                                    size: 28,
                                  ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage({
    required String title,
    required String description,
    required String imagePath,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          Expanded(
            child: Center(
              child: SizedBox(
                width: 330,
                height: 330,
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          const SizedBox(height: 33),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.dmSans(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              height: 28 / 24,
              letterSpacing: -0.4,
              color: AppColors.dark,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            description,
            textAlign: TextAlign.center,
            style: GoogleFonts.dmSans(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 24 / 16,
              letterSpacing: -0.2,
              color: AppColors.dark.withOpacity(0.55),
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
