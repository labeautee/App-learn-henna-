import 'package:flutter/material.dart';
import 'features/dashboard/home_screen.dart';
import 'features/tutorials/tutorial_list_screen.dart';
import 'features/profile/profile_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => HomeScreen(),
  '/tutorials': (context) => TutorialListScreen(),
  '/profile': (context) => ProfileScreen(),
};
