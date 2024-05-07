import 'package:flutter/material.dart';

class MainSide {
  final String title;
  final IconData icon;
  final int index;

  MainSide({
    required this.title,
    required this.icon,
    required this.index,
  });
}

List demoMainSide = [
  MainSide(title: "Dashboard", icon: Icons.dashboard_outlined, index: 0),
  MainSide(title: "Activity", icon: Icons.rocket_outlined, index: 1),
  MainSide(title: "Workout", icon: Icons.fitness_center_outlined, index: 2),
  MainSide(title: "Chat With Coach", icon: Icons.email_outlined, index: 3),
  MainSide(title: "Diets", icon: Icons.egg_alt_outlined, index: 4),
];
