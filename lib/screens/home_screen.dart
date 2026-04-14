import 'package:flutter/material.dart';
import 'profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.zero, // 🔥 removes extra spacing
        children: [

          // 🔥 Clickable Top Bar (home_0)
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
            child: Image.asset(
              'assets/images/home_0.png',
              width: double.infinity,
              fit: BoxFit.fitWidth, // ✅ BEST for UI images
            ),
          ),

          // باقي images
          Image.asset(
            'assets/images/home_1.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),

          Image.asset(
            'assets/images/home_2.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),

          Image.asset(
            'assets/images/home_3.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),

          Image.asset(
            'assets/images/home_4.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),

        ],
      ),
    );
  }
}