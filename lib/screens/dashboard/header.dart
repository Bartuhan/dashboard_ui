import 'package:dashboard_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Hello, Bartuhan İshakoğlu',
          style: GoogleFonts.ubuntu(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w800,
          ),
        ),
        const Spacer(),
        Container(
          height: 40,
          width: 250,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(color: primartyColor, borderRadius: BorderRadius.circular(10)),
          child: TextFormField(
            style: const TextStyle(color: Colors.grey, fontSize: 12),
            decoration: const InputDecoration(
              hintText: 'Search...',
              hintStyle: TextStyle(color: Colors.grey, fontSize: 12),
              disabledBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              suffixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(width: defaultPadding * 2),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(color: primartyColor, borderRadius: BorderRadius.circular(10)),
          child: const Center(
              child: Icon(
            Icons.notifications,
            color: Colors.white,
          )),
        )
      ],
    );
  }
}
