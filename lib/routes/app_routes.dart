import 'package:flutter/material.dart';
import 'package:my_flutter_app/screens/post_screen.dart';
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
    '/posts': (context) => const PostsScreen(),
    '/about': (context) => const AboutScreen(),
  };
}
