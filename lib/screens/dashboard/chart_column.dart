import 'package:dashboard_ui/constants.dart';
import 'package:dashboard_ui/models/chart_column_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartColumn extends StatelessWidget {
  const ChartColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBackgroundColor: Colors.transparent,
      margin: EdgeInsets.zero,
      borderWidth: 0,
      plotAreaBorderWidth: 0,
      primaryXAxis: const CategoryAxis(
        plotOffset: 20,
        labelStyle: TextStyle(color: Colors.white),
        axisLine: AxisLine(width: 0),
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        majorGridLines: MajorGridLines(width: 0),
        majorTickLines: MajorTickLines(width: 0),
      ),
      primaryYAxis: NumericAxis(
        majorGridLines: const MajorGridLines(width: 1, color: bgColor),
        labelStyle: const TextStyle(color: Colors.white),
        majorTickLines: const MajorTickLines(width: 0),
        axisLine: const AxisLine(width: 0),
        isVisible: true,
        numberFormat: NumberFormat.compactCurrency(locale: 'eu', symbol: 'Kcal', decimalDigits: 0),
        minimum: 1000,
        maximum: 5000,
        interval: 1000,
      ),
      series: <CartesianSeries>[
        ColumnSeries<ChartColumnData, String>(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          dataSource: chartData,
          width: 0.4,
          gradient: const LinearGradient(colors: [
            Color(0xFF7EF94E),
            Color(0xFF526ADA),
          ]),
          xValueMapper: (ChartColumnData data, _) => data.x,
          yValueMapper: (ChartColumnData data, _) => data.y,
        ),
        ColumnSeries<ChartColumnData, String>(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          dataSource: chartData,
          width: 0.4,
          gradient: const LinearGradient(colors: [
            Color(0xFF9B3AD8),
            Color(0xFF526ADA),
          ]),
          xValueMapper: (ChartColumnData data, _) => data.x,
          yValueMapper: (ChartColumnData data, _) => data.y1,
        ),
      ],
    );
  }
}

final List<ChartColumnData> chartData = [
  ChartColumnData('Aug', 4700, 3000),
  ChartColumnData('Sep', 3000, 5000),
  ChartColumnData('Oct', 3500, 2000),
];
