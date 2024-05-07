import 'package:dashboard_ui/constants.dart';
import 'package:dashboard_ui/models/main_side.dart';
import 'package:dashboard_ui/models/main_side_settings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideMain extends StatefulWidget {
  const SideMain({super.key});

  @override
  State<SideMain> createState() => _SideMainState();
}

class _SideMainState extends State<SideMain> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(color: primartyColor, boxShadow: [
        BoxShadow(
          color: Colors.black87,
          spreadRadius: 1,
          blurRadius: 5,
          offset: Offset(0, 5),
        ),
      ]),
      child: Column(
        children: [
          const SizedBox(height: defaultPadding * 2),
          SizedBox(
            height: 50,
            child: Text(
              'Workout Go ',
              style: GoogleFonts.ubuntu(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          const SizedBox(height: defaultPadding * 2),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemCount: demoMainSide.length,
                itemBuilder: (context, index) {
                  return listTile1(index, demoMainSide[index]);
                },
              ),
            ),
          ),
          const SizedBox(height: defaultPadding * 2),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                itemCount: demoMainSideSettings.length,
                itemBuilder: (context, index) {
                  return listTile2(index, demoMainSideSettings[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container listTile1(int index, MainSide mainSide) {
    return Container(
      decoration: BoxDecoration(
        color: _selectedIndex == index // Selected index
            ? const Color(0xFFCCEDDD)
            : Colors.transparent,
        gradient: const LinearGradient(
          colors: [Color(0xFF58D9D9), Color(0xFF5747EF)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ListTile(
        hoverColor: const Color(0xFFCCEDDD),
        onTap: () {
          setState(() {
            _selectedIndex = mainSide.index;
          });
        },
        leading: Padding(
          padding: const EdgeInsets.only(left: defaultPadding * 1.5),
          child: SizedBox(
            width: 30,
            height: 30,
            child: Icon(
              mainSide.icon,
              color: _selectedIndex == index // Selected index
                  ? Colors.black
                  : Colors.white,
            ),
          ),
        ),
        title: Text(
          mainSide.title,
          style: GoogleFonts.ubuntu(
            color: _selectedIndex == index // Selected index
                ? Colors.black
                : Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }

  Container listTile2(int index, MainSideSettings mainSideSettings) {
    return Container(
      decoration: BoxDecoration(
        color: _selectedIndex == index + 5 // +5 index because demoMainScreenSetting index start with 5
            ? const Color(0xFFCCEDDD)
            : Colors.transparent,
        gradient: const LinearGradient(
          colors: [Color(0xFF58D9D9), Color(0xFF5747EF)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: ListTile(
        hoverColor: const Color(0xFFCCEDDD),
        onTap: () {
          setState(() {
            _selectedIndex = mainSideSettings.index;
          });
        },
        leading: Padding(
          padding: const EdgeInsets.only(left: defaultPadding * 1.5),
          child: SizedBox(
            width: 30,
            height: 30,
            child: Icon(
              mainSideSettings.icon,
              color: _selectedIndex == index + 5 // +5 index because demoMainScreenSetting index start with 5
                  ? Colors.black
                  : Colors.white,
            ),
          ),
        ),
        title: Text(
          mainSideSettings.title,
          style: GoogleFonts.ubuntu(
            color: _selectedIndex == index + 5 // +5 index because demoMainScreenSetting index start with 5
                ? Colors.black
                : Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
