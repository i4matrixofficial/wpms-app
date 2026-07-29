import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  bool isLogin = false;
  bool obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFE5D8),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 235, 233, 231), Color(0xFFFFF0E8)],
            stops: [0.0, 1.0],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                // Top Row - FIXORA + English button
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'FIXO',
                            style: TextStyle(
                              color: Color(0xFFEE5F2D),
                              fontWeight: FontWeight.w900,
                              fontSize: 24,
                              height: 1.0,
                              fontFamily: 'Inter',
                            ),
                          ),
                          TextSpan(
                            text: 'RA',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                              fontSize: 24,
                              height: 1.0,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ],
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: const Color(0xFF0F172A).withOpacity(0.2)),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        minimumSize: const Size(81, 35),
                      ),
                      child: const Text(
                        'English',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Inter',
                          height: 1.0,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Title
                const Text(
                  'Create account',
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
                  'Join Fixora in seconds',
                  style: TextStyle(
                    color: Color(0x990F172A),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Inter',
                    height: 1.4,
                    letterSpacing: -0.14,
                  ),
                ),
                const SizedBox(height: 20),

                // CARD CONTAINER
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0x33C9C9C9),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      // Login/Register Tab
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0x1A0F172A),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () => Navigator.pushReplacementNamed(context, '/welcome'),
                                child: Container(
                                  height: 40,
                                  margin: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: isLogin ? const Color(0xFFEE5F2D) : Colors.transparent,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                        color: isLogin ? const Color(0xFFFFFFFF) : const Color(0x660F172A),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        height: 1.3,
                                        letterSpacing: -0.32,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 40,
                                  margin: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color: !isLogin ? const Color(0xFFEE5F2D) : Colors.transparent,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Register',
                                      style: TextStyle(
                                        color: !isLogin ? const Color(0xFFFFFFFF) : const Color(0x660F172A),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        fontFamily: 'Inter',
                                        height: 1.3,
                                        letterSpacing: -0.32,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16),

                      // NAME label
                      const Text(
                        'NAME',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xCC0F172A),
                          fontFamily: 'Inter',
                          height: 1.3,
                          letterSpacing: -0.32,
                        ),
                      ),
                      const SizedBox(height: 8),

                      // Name Field
                      TextField(
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF0F172A),
                          fontFamily: 'Inter',
                        ),
                        decoration: InputDecoration(
                          hintText: 'Your Name',
                          hintStyle: const TextStyle(
                            color: Color(0x660F172A),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                            letterSpacing: -0.32,
                          ),
                          prefixIcon: const Icon(Icons.person_outline, color: Color(0x660F172A), size: 24),
                          filled: true,
                          fillColor: const Color(0x1A0F172A),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Color(0x33FFFFFF)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Color(0x33FFFFFF)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Color(0xFFEE5F2D)),
                          ),
                          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // EMAIL label
                      const Text(
                        'EMAIL',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xCC0F172A),
                          fontFamily: 'Inter',
                          height: 1.3,
                          letterSpacing: -0.32,
                        ),
                      ),
                      const SizedBox(height: 8),

                      // Email Field
                      TextField(
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF0F172A),
                          fontFamily: 'Inter',
                        ),
                        decoration: InputDecoration(
                          hintText: 'Enter your email',
                          hintStyle: const TextStyle(
                            color: Color(0x660F172A),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                            letterSpacing: -0.32,
                          ),
                          prefixIcon: const Icon(Icons.email_outlined, color: Color(0x660F172A), size: 24),
                          filled: true,
                          fillColor: const Color(0x1A0F172A),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Color(0x33FFFFFF)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Color(0x33FFFFFF)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Color(0xFFEE5F2D)),
                          ),
                          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // PASSWORD label
                      const Text(
                        'PASSWORD',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xCC0F172A),
                          fontFamily: 'Inter',
                          height: 1.3,
                          letterSpacing: -0.32,
                        ),
                      ),
                      const SizedBox(height: 8),

                      // Password Field
                      TextField(
                        obscureText: obscurePassword,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF0F172A),
                          fontFamily: 'Inter',
                        ),
                        decoration: InputDecoration(
                          hintText: 'Enter your password',
                          hintStyle: const TextStyle(
                            color: Color(0x660F172A),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Inter',
                            letterSpacing: -0.32,
                          ),
                          prefixIcon: const Icon(Icons.lock_outline, color: Color(0x660F172A), size: 24),
                          suffixIcon: IconButton(
                            icon: Icon(
                              obscurePassword ? Icons.visibility_off : Icons.visibility,
                              color: const Color(0x660F172A),
                              size: 24,
                            ),
                            onPressed: () => setState(() => obscurePassword = !obscurePassword),
                          ),
                          filled: true,
                          fillColor: const Color(0x1A0F172A),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Color(0x33FFFFFF)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Color(0x33FFFFFF)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(color: Color(0xFFEE5F2D)),
                          ),
                          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Sign In Button
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {Navigator.pushNamed(context, '/who-are-you');},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFEE5F2D),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
                            elevation: 0,
                            padding: const EdgeInsets.all(10),
                          ),
                          child: const Text(
                            'Sign in',
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
                      const SizedBox(height: 8),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                // OR CONTINUE WITH
                Row(
                  children: [
                    Expanded(child: Divider(color: const Color(0xFF0F172A).withOpacity(0.2), thickness: 1)),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'OR CONTINUE WITH',
                        style: TextStyle(
                          color: Color(0x800F172A),
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter',
                          height: 1.3,
                          letterSpacing: -0.32,
                        ),
                      ),
                    ),
                    Expanded(child: Divider(color: const Color(0xFF0F172A).withOpacity(0.2), thickness: 1)),
                  ],
                ),
                const SizedBox(height: 16),

                // Social Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _socialButton('G'),
                    _socialButton('', icon: Icons.apple),
                    _socialButton('f'),
                  ],
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _socialButton(String label, {IconData? icon}) {
    return Container(
      width: 110,
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0x330F172A),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Center(
        child: icon != null
            ? Icon(icon, color: Colors.white, size: 20)
            : Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
      ),
    );
  }
}