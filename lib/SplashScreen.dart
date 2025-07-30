import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'HomePage.dart'; 

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    // Start fade animation
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B254B),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Fade animation for image
                AnimatedOpacity(
                  opacity: _opacity,
                  duration: const Duration(seconds: 2),
                  child: Image.network(
                    'https://storage.googleapis.com/a1aa/image/a8a24600-099a-4190-007d-40a513bc4c5f.jpg',
                    width: 240,
                    height: 200,
                    fit: BoxFit.contain,
                    semanticLabel: 'Illustration of three people holding and arranging groceries including carrot, apple, orange, and a shopping bag',
                    errorBuilder: (context, error, stackTrace) => const Icon(Icons.image_not_supported, size: 100, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 32),

                // Loading indicator
                const CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFF9A825)),
                ),
                const SizedBox(height: 32),

                // Heading
                const Text(
                  'Quick & Fastest\nDelivery Food',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFF9A825),
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    height: 1.2,
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(height: 16),

                // Description
                const Text(
                  'Ini adalah kalimat sembarang like this: Lorem ipsum dolor sit amet',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Poppins',
                  ),
                ),
                const SizedBox(height: 32),

                // Button
                ElevatedButton(
                  onPressed: () {
                    // Navigasi ke HomePage
                    Navigator.push(
                      context,
                     MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF9A825),
                    foregroundColor: const Color(0xFF1B254B),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 48,
                      vertical: 14,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                    ),
                    elevation: 4,
                    shadowColor: Colors.black45,
                  ),
                  child: const Text('Get Started'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
