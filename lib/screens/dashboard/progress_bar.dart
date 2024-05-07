import 'package:dashboard_ui/constants.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    super.key,
    required this.title,
    required this.number,
    required this.persentage,
  });

  final String title, number;
  final double persentage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: GoogleFonts.ubuntu(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: number,
                  style: GoogleFonts.ubuntu(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: '/100',
                      style: GoogleFonts.ubuntu(
                        color: Colors.white54,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 7,
          width: double.infinity,
          child: GFProgressBar(
            margin: const EdgeInsets.only(left: 0),
            percentage: persentage,
            backgroundColor: bgColor,
            linearGradient: const LinearGradient(
              colors: [
                Color(0xFF5747EF),
                Color(0xFF58D9D9),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        )
      ],
    );
  }
}
