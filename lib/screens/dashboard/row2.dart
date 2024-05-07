import 'package:dashboard_ui/constants.dart';
import 'package:dashboard_ui/screens/dashboard/chart_spline_area.dart';
import 'package:dashboard_ui/screens/dashboard/progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class Row2 extends StatelessWidget {
  const Row2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: 300,
            padding: const EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(color: primartyColor, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Activity',
                      style: GoogleFonts.ubuntu(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF54AFBC),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: defaultPadding / 2),
                      child: Text(
                        'Run',
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
                        color: Color(0xFF9644FF),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: defaultPadding / 2),
                      child: Text(
                        'Walk',
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding * 2),
                const Expanded(child: ChartSplineArea())
              ],
            ),
          ),
        ),
        const SizedBox(width: defaultPadding),
        Expanded(
          child: Container(
            height: 300,
            padding: const EdgeInsets.only(
              left: defaultPadding,
              right: defaultPadding,
              bottom: defaultPadding,
            ),
            decoration: BoxDecoration(color: primartyColor, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Expanded(
                    child: TableCalendar(
                  headerStyle: const HeaderStyle(
                    formatButtonVisible: false,
                    formatButtonShowsNext: false,
                    titleTextStyle: TextStyle(color: Colors.white),
                    leftChevronIcon: Icon(Icons.chevron_left, color: Colors.white),
                    rightChevronIcon: Icon(Icons.chevron_right, color: Colors.white),
                  ),
                  weekendDays: const [DateTime.saturday],
                  calendarStyle: const CalendarStyle(
                    defaultTextStyle: TextStyle(
                      color: Colors.white,
                    ),
                    selectedDecoration: BoxDecoration(
                      color: Color(0xFF54AFBC),
                      shape: BoxShape.circle,
                    ),
                    holidayTextStyle: TextStyle(color: Colors.white),
                    holidayDecoration: BoxDecoration(
                      color: Color(0xFF9644FF),
                      shape: BoxShape.circle,
                    ),
                    todayDecoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    weekendTextStyle: TextStyle(color: Colors.white),
                  ),
                  daysOfWeekStyle: const DaysOfWeekStyle(
                    weekendStyle: TextStyle(color: Colors.red),
                    weekdayStyle: TextStyle(color: Colors.white),
                  ),
                  rowHeight: 35,
                  weekNumbersVisible: false,
                  locale: 'en_US',
                  selectedDayPredicate: (day) {
                    return isSameDay(DateTime.utc(2024, 5, 10), day);
                  },
                  holidayPredicate: (day) {
                    return isSameDay(DateTime.utc(2024, 5, 15), day);
                  },
                  firstDay: DateTime.utc(210, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                )),
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
                    Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFF54AFBC),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        'Yoga',
                        style: GoogleFonts.ubuntu(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(width: defaultPadding),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(defaultPadding),
            height: 300,
            decoration: BoxDecoration(color: primartyColor, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Workout',
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
                const ProgressBar(
                  title: 'Squats',
                  number: '70',
                  persentage: 0.7,
                ),
                const SizedBox(height: defaultPadding),
                const ProgressBar(
                  title: 'Lunges',
                  number: '90',
                  persentage: 0.9,
                ),
                const SizedBox(height: defaultPadding),
                const ProgressBar(
                  title: 'Push-ups',
                  number: '15',
                  persentage: 0.15,
                ),
                const SizedBox(height: defaultPadding),
                const ProgressBar(
                  title: 'Stretching',
                  number: '70',
                  persentage: 0.7,
                ),
                const SizedBox(height: defaultPadding),
                const ProgressBar(
                  title: 'Skipping rope',
                  number: '30',
                  persentage: 0.3,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
