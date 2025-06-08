import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/details_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/settings_screen.dart';
import '../screens/about_screen.dart';

class AppRoutes {
  static final routes = <String, WidgetBuilder>{
    '/': (context) => const HomeScreen(),
    '/details': (context) => const DetailsScreen(),
    '/profile': (context) => const ProfileScreen(),
    '/settings': (context) => const SettingsScreen(),
    '/about': (context) => const AboutScreen(),
  };
}
