import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/username.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Background gradient
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 35, 36, 35), Color.fromARGB(255, 51, 50, 50)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Expanded(
                  flex: 6,
                  child: Image.asset(
                    "assets/images/running.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 0, 0, 0),
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "It's Go Time",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "From yoga to outdoor running to gym workouts\nNo peakForm equipment required.",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Color.fromARGB(115, 217, 217, 217), fontSize: 14),
                        ),
                        const SizedBox(height: 20),
                        _buildSignInButton(
                          label: "Sign in with Google",
                          logo: "assets/images/googlelogo.png",
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Username(),
                              ),
                            );
                          },
                          backgroundColor: Colors.white,
                          textColor: Colors.black,
                          border: true,
                        ),
                        const SizedBox(height: 10),
                        _buildSignInButton(
                          label: "Continue with Apple",
                          logo: "assets/images/apple.png",
                          onTap: () {},
                          backgroundColor: const Color.fromARGB(255, 47, 46, 46),
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: 16),
                        RichText(
                          text: TextSpan(
                            text: "Already have an account? ",
                            style: const TextStyle(color: Color.fromARGB(137, 255, 255, 255)),
                            children: [
                              TextSpan(
                                text: "Sign In",
                                style: const TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.bold,
                                ),
                                recognizer:
                                    TapGestureRecognizer()
                                      ..onTap = () {
                                        // Handle sign in tap
                                      },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignInButton({
    required String label,
    required String logo,
    required VoidCallback onTap,
    required Color backgroundColor,
    required Color textColor,
    bool border = false,
  }) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: textColor,
        side:
            border ? const BorderSide(color: Colors.black12) : BorderSide.none,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        fixedSize: const Size(330, 50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(logo, width: 20, height: 20),
          const SizedBox(width: 10),
          Text(label),
        ],
      ),
    );
  }
}
