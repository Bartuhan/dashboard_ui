import 'package:dashboard_ui/constants.dart';
import 'package:dashboard_ui/models/meal_data.dart';
import 'package:dashboard_ui/screens/dashboard/chart_column.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Row3 extends StatelessWidget {
  const Row3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 300,
            padding: const EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: primartyColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Calories Burn',
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Quarter',
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Icon(Icons.arrow_drop_down, color: Colors.white54)
                  ],
                ),
                const SizedBox(height: defaultPadding * 2),
                const Expanded(child: ChartColumn()),
                const SizedBox(height: defaultPadding),
                Row(
                  children: [
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF9644FF),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        'Fitness',
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding * 2),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF7EF94F),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        'Cardio',
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(width: defaultPadding * 2),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(width: defaultPadding),
        Expanded(
          child: Container(
            height: 300,
            padding: const EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: primartyColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Water Balance',
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Today',
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Icon(Icons.arrow_drop_down, color: Colors.white54)
                  ],
                ),
                const SizedBox(height: defaultPadding * 2),
                SizedBox(
                  child: CircularPercentIndicator(
                    radius: 70,
                    lineWidth: 20,
                    percent: 0.45,
                    circularStrokeCap: CircularStrokeCap.round,
                    backgroundColor: bgColor,
                    linearGradient: const LinearGradient(
                      colors: [
                        Color(0xFF526ADA),
                        Color(0xFF526ADA),
                        Color(0xFF78E5E7),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    center: Text(
                      '45%',
                      style: GoogleFonts.ubuntu(
                        color: Colors.white54,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: defaultPadding * 2),
                RichText(
                  text: TextSpan(
                    text: '1250 ',
                    style: GoogleFonts.ubuntu(color: Colors.white),
                    children: <TextSpan>[
                      TextSpan(
                        text: '/ 2200 ml',
                        style: GoogleFonts.ubuntu(
                          color: Colors.white54,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: defaultPadding),
        Expanded(
          flex: 2,
          child: Container(
            height: 300,
            padding: const EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: primartyColor,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Your Meal',
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      'Today',
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 5),
                    const Icon(Icons.arrow_drop_down, color: Colors.white54)
                  ],
                ),
                const SizedBox(height: defaultPadding),
                SizedBox(
                  width: double.infinity,
                  height: 200,
                  child: DataTable(
                    headingRowHeight: 0,
                    horizontalMargin: 0,
                    dataTextStyle: const TextStyle(color: Colors.white),
                    columns: const [
                      DataColumn(label: Text('')),
                      DataColumn(label: Text('')),
                      DataColumn(label: Text('')),
                      DataColumn(label: Text('')),
                    ],
                    rows: List.generate(
                      demoMealData.length,
                      (index) => mealDataRow(demoMealData[index]),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: defaultPadding),
      ],
    );
  }
}

DataRow mealDataRow(MealData mealData) {
  return DataRow(
    cells: [
      DataCell(Text(mealData.title1)),
      DataCell(Text(mealData.title2)),
      DataCell(Text(
        mealData.title3,
        style: const TextStyle(color: Color.fromARGB(255, 179, 16, 238)),
      )),
      DataCell(Text(
        mealData.title4,
        style: const TextStyle(color: Color.fromARGB(255, 149, 88, 253)),
      )),
    ],
  );
}
