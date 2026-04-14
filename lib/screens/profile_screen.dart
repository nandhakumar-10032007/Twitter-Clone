import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // 👈 important

      body: Row(
        children: [

          // 🔥 LEFT PANEL (PROFILE IMAGE)
          Container(
            width: MediaQuery.of(context).size.width * 0.75, // 👈 adjust here
            height: double.infinity,
            child: Image.asset(
              'assets/images/profile.png',
              fit: BoxFit.cover,
            ),
          ),

          // 🔥 RIGHT SIDE (DIM BACKGROUND)
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context); // 👈 close when clicked
              },
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
        ],
      ),
    );
  }
}