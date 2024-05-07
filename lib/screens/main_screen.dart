import 'package:dashboard_ui/constants.dart';
import 'package:dashboard_ui/screens/dashboard/header.dart';
import 'package:dashboard_ui/screens/dashboard/row1.dart';
import 'package:dashboard_ui/screens/dashboard/row2.dart';
import 'package:dashboard_ui/screens/dashboard/row3.dart';
import 'package:dashboard_ui/screens/side_main.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(
            child: SingleChildScrollView(child: SideMain()),
          ),
          Expanded(
            flex: 4,
            child: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
                child: const Column(
                  children: [
                    SizedBox(height: defaultPadding),
                    Header(),
                    SizedBox(height: defaultPadding * 2),
                    Row1(),
                    SizedBox(height: defaultPadding * 2),
                    Row2(),
                    SizedBox(height: defaultPadding * 2),
                    Row3()
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
