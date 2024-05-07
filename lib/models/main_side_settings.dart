import 'package:flutter/material.dart';

class MainSideSettings {
  final String title;
  final IconData icon;
  final int index;

  MainSideSettings({
    required this.title,
    required this.icon,
    required this.index,
  });
}

List demoMainSideSettings = [
  MainSideSettings(title: 'Settings', icon: Icons.settings, index: 5),
  MainSideSettings(title: 'Log Out', icon: Icons.logout_outlined, index: 6),
];
