import 'package:flutter/material.dart';
import 'profile_screen.dart'; // 👈 import

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [

          // 🔥 CLICKABLE TOP BAR (nodi_0)
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
              'assets/images/nodi_0.png',
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),

          // 🔥 باقي notifications
          Image.asset(
            'assets/images/nodi_1.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),

          Image.asset(
            'assets/images/nodi_2.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),

          Image.asset(
            'assets/images/nodi_3.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),

          Image.asset(
            'assets/images/nodi_4.png',
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
        ],
      ),
    );
  }
}