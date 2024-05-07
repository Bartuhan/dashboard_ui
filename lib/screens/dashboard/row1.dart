import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../constants.dart';

class Row1 extends StatelessWidget {
  const Row1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ContainerRing(
          percent: 0.7,
          number: '70%',
          title1: 'Hatha Yoga',
          title2: '40',
          title3: '+3.7',
          title4: '/60',
          title5: ' minutes',
          gradientStart: Color(0xFF526ADA),
          gradientMiddle: Color(0xFF526ADA),
          gradientEnd: Color(0xFF78E5E7),
        ),
        SizedBox(width: defaultPadding),
        ContainerRing(
          percent: 0.5,
          number: '50%',
          title1: 'Cardio',
          title2: '40',
          title3: '- 6%',
          title4: '/60',
          title5: ' minutes',
          gradientStart: Color(0xFF526ADA),
          gradientMiddle: Color(0xFF78E5E7),
          gradientEnd: Color(0xFF7EF94E),
        ),
        SizedBox(width: defaultPadding),
        ContainerRing(
          percent: 1,
          number: '100%',
          title1: 'Fitness',
          title2: '60',
          title3: '+2.7',
          title4: '/60',
          title5: ' minutes',
          gradientStart: Color(0xFF9B3AD8),
          gradientMiddle: Color(0xFF9B3AD8),
          gradientEnd: Color(0xFFC25E84),
        ),
        SizedBox(width: defaultPadding),
        ContainerRing(
          percent: 0.16,
          number: '16%',
          title1: 'Steps',
          title2: '4',
          title3: '+7 %',
          title4: '/25',
          title5: ' Km',
          gradientStart: Color(0xFF526ADA),
          gradientMiddle: Color(0xFF78E5E7),
          gradientEnd: Color(0xFF7EF94E),
        ),
      ],
    );
  }
}

class ContainerRing extends StatelessWidget {
  const ContainerRing({
    super.key,
    required this.title1,
    required this.title2,
    required this.title3,
    required this.title4,
    required this.title5,
    required this.number,
    required this.percent,
    required this.gradientStart,
    required this.gradientMiddle,
    required this.gradientEnd,
  });

  final String title1, title2, title3, title4, title5, number;
  final double percent;
  final Color gradientStart, gradientMiddle, gradientEnd;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(defaultPadding),
        height: 160,
        decoration: BoxDecoration(color: primartyColor, borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title1,
                  style: GoogleFonts.ubuntu(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 10),
                RichText(
                  text: TextSpan(text: title2, style: GoogleFonts.ubuntu(color: Colors.white), children: <TextSpan>[
                    TextSpan(
                      text: title4,
                      style: GoogleFonts.ubuntu(
                        color: Colors.white54,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: title5,
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ]),
                ),
                const Spacer(),
                Text(
                  title3,
                  style: GoogleFonts.ubuntu(
                    color: title3[0] == '-' ? Colors.red : Colors.green,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'from best week',
                  style: GoogleFonts.ubuntu(
                    color: Colors.white54,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            const SizedBox(width: defaultPadding),
            SizedBox(
              child: CircularPercentIndicator(
                radius: 50,
                lineWidth: 15,
                percent: percent,
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: bgColor,
                linearGradient: LinearGradient(
                  colors: [
                    gradientStart,
                    gradientMiddle,
                    gradientEnd,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                center: Text(
                  number,
                  style: GoogleFonts.ubuntu(
                    color: Colors.white54,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
