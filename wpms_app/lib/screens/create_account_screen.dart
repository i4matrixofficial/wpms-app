import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  // 6 OTP controllers & focus nodes
  final List<TextEditingController> _controllers =
      List.generate(6, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(6, (_) => FocusNode());

  // Resend countdown timer
  int _secondsRemaining = 60;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    setState(() => _secondsRemaining = 60);
    _timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (_secondsRemaining == 0) {
        t.cancel();
      } else {
        setState(() => _secondsRemaining--);
      }
    });
  }

  @override
  void dispose() {
    for (final c in _controllers) {
      c.dispose();
    }
    for (final f in _focusNodes) {
      f.dispose();
    }
    _timer?.cancel();
    super.dispose();
  }

  String get _timerLabel {
    final m = (_secondsRemaining ~/ 60).toString().padLeft(2, '0');
    final s = (_secondsRemaining % 60).toString().padLeft(2, '0');
    return '$m:$s';
  }

  void _onOtpChanged(String value, int index) {
    if (value.length == 1 && index < 5) {
      _focusNodes[index + 1].requestFocus();
    } else if (value.isEmpty && index > 0) {
      _focusNodes[index - 1].requestFocus();
    }
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

                // ── Title ───────────────────────────────────────────────
                const Text(
                  'Verify Your Email',
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
                  'For Your Security, We\'ve Sent A One-Time Code To '
                  'ex*******@gmail.com. Enter It Below To Access Your Account.',
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

                // ── 6 OTP Circle Inputs ─────────────────────────────────
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(6, (i) => _buildOtpBox(i)),
                ),
                const SizedBox(height: 20),

                // ── Resend Text ─────────────────────────────────────────
                Center(
                  child: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color(0xFF7A7A7A),
                        height: 1.4,
                        letterSpacing: -0.14,
                      ),
                      children: [
                        const TextSpan(
                          text: 'Didnt receive OTP? Resend in ',
                        ),
                        TextSpan(
                          text: _timerLabel,
                          style: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF0F172A),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 28),

                // ── Verify Button ───────────────────────────────────────
                SizedBox(
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/set-new-password');
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

  Widget _buildOtpBox(int index) {
    return SizedBox(
      width: 46,
      height: 54,
      child: TextField(
        controller: _controllers[index],
        focusNode: _focusNodes[index],
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        onChanged: (v) => _onOtpChanged(v, index),
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        style: const TextStyle(
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
          fontSize: 20,
          color: Color(0xFF0F172A),
        ),
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: const Color(0x1AFFFFFF),
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
              color: const Color(0xFF000000).withOpacity(0.10),
              width: 1,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: BorderSide(
              color: const Color(0xFF000000).withOpacity(0.10),
              width: 1,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(100),
            borderSide: const BorderSide(
              color: Color(0xFFEE5F2D),
              width: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}