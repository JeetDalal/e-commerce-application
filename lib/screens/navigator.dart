import 'package:e_commerce_app/screens/cart_screen.dart';
import 'package:e_commerce_app/screens/home.dart';
import 'package:e_commerce_app/screens/notification_screen.dart';
import 'package:e_commerce_app/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class AppNavigator extends StatefulWidget {
  const AppNavigator({Key? key}) : super(key: key);

  @override
  State<AppNavigator> createState() => _AppNavigatorState();
}

class _AppNavigatorState extends State<AppNavigator> {
  PageController _controller = PageController();
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 5,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: GNav(
            selectedIndex: index,
            onTabChange: (value) {
              index = value;
              _controller.animateToPage(index,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInCubic);
            },
            activeColor: Colors.white,
            tabBackgroundColor: Colors.blueGrey.withOpacity(0.8),
            padding: const EdgeInsets.all(10),
            tabs: const [
              GButton(icon: Icons.home, text: "Home"),
              GButton(
                icon: Icons.shop,
                text: "Your Cart",
              ),
              GButton(
                icon: Icons.notifications,
                text: "Notifications",
              ),
              GButton(icon: Icons.person_pin, text: "Profile"),
            ],
          ),
        ),
      ),
      body: PageView(
        onPageChanged: (value) {
          setState(() {
            index = value;
          });
        },
        controller: _controller,
        children: const [
          HomePage(),
          CartScreen(),
          NotificationScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }
}
