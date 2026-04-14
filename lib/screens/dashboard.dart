import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'notification_screen.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;

  final screens = [
    const HomeScreen(),
    Container(),
    const NotificationScreen(),
    Container(),
  ];

  void onTabTap(int index) {
    if (index == 1 || index == 3) return;

    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // 🔥 MAIN CONTENT
      body: screens[currentIndex],

      // 🔥 FLOATING TWEET BUTTON
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF1DA1F2),
        child: const Icon(Icons.edit, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      // 🔥 CLEAN BOTTOM NAV BAR
      bottomNavigationBar: Container(
        height: 65,
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            // HOME
            IconButton(
              onPressed: () => onTabTap(0),
              icon: Icon(
                Icons.home,
                size: 28,
                color: currentIndex == 0
                    ? Color(0xFF1DA1F2)
                    : Colors.grey,
              ),
            ),

            // SEARCH
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, size: 28, color: Colors.grey),
            ),

            // NOTIFICATIONS
            IconButton(
              onPressed: () => onTabTap(2),
              icon: Icon(
                Icons.notifications,
                size: 28,
                color: currentIndex == 2
                    ? Color(0xFF1DA1F2)
                    : Colors.grey,
              ),
            ),

            // MESSAGES
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.mail, size: 28, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}