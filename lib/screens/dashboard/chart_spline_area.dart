import 'package:dashboard_ui/constants.dart';
import 'package:dashboard_ui/models/chart_spline_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ChartSplineArea extends StatelessWidget {
  const ChartSplineArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      onDataLabelRender: (DataLabelRenderArgs args) {
        if (args.pointIndex == 4) {
          args.text = '7 Km';
          args.textStyle = const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w900,
          );
        } else {
          args.text = '';
        }
      },
      onMarkerRender: (MarkerRenderArgs args) {
        if (!(args.pointIndex == 4)) {
          args.markerWidth = 0;
          args.markerHeight = 0;
        }
      },
      primaryXAxis: const CategoryAxis(
        labelStyle: TextStyle(color: Colors.white60),
        axisLine: AxisLine(width: 0),
        labelPlacement: LabelPlacement.onTicks,
        edgeLabelPlacement: EdgeLabelPlacement.shift,
        majorGridLines: MajorGridLines(width: 0),
        majorTickLines: MajorTickLines(width: 0),
      ),
      primaryYAxis: NumericAxis(
        labelStyle: const TextStyle(color: Colors.white60),
        axisLine: const AxisLine(width: 0),
        majorGridLines: const MajorGridLines(width: 0),
        majorTickLines: const MajorTickLines(width: 0),
        numberFormat: NumberFormat.compactCurrency(
          locale: 'eu',
          symbol: 'Km',
          decimalDigits: 0,
        ),
        minimum: 2,
        maximum: 10,
        interval: 2,
      ),
      plotAreaBackgroundColor: Colors.transparent,
      plotAreaBorderWidth: 0,
      borderWidth: 0,
      margin: const EdgeInsets.all(0),
      series: <CartesianSeries<ChartSplineData, String>>[
        SplineSeries(
          color: const Color(0xFF9644FF),
          width: 4,
          dataSource: charthData,
          xValueMapper: (ChartSplineData data, _) => data.month,
          yValueMapper: (ChartSplineData data, _) => data.amount,
        ),
        SplineAreaSeries(
          dataSource: charthData,
          xValueMapper: (ChartSplineData data, _) => data.month,
          yValueMapper: (ChartSplineData data, _) => data.amount,
          gradient: LinearGradient(
            colors: [
              const Color(0xFF342C9C),
              const Color(0xFF342C9C).withAlpha(23),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        SplineSeries(
          color: const Color(0xFF54AFBC),
          width: 2,
          dataLabelSettings: const DataLabelSettings(
            useSeriesColor: true,
            isVisible: true,
            labelAlignment: ChartDataLabelAlignment.top,
          ),
          markerSettings: const MarkerSettings(
            isVisible: true,
            color: primartyColor,
            borderWidth: 4,
            height: 20,
            width: 20,
          ),
          dataSource: charthData2,
          xValueMapper: (ChartSplineData data, _) => data.month,
          yValueMapper: (ChartSplineData data, _) => data.amount,
        ),
        SplineAreaSeries(
          dataSource: charthData2,
          xValueMapper: (ChartSplineData data, _) => data.month,
          yValueMapper: (ChartSplineData data, _) => data.amount,
          gradient: LinearGradient(
            colors: [
              const Color(0xFF28506A),
              const Color(0xFF28506A).withAlpha(23),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ],
    );
  }
}

final List<ChartSplineData> charthData = <ChartSplineData>[
  ChartSplineData('Mo', 2),
  ChartSplineData('Tu', 4),
  ChartSplineData('Wo', 3),
  ChartSplineData('Th', 8),
  ChartSplineData('Fr', 5),
  ChartSplineData('Sa', 7),
  ChartSplineData('Su', 4),
];

final List<ChartSplineData> charthData2 = <ChartSplineData>[
  ChartSplineData('Mo', 4),
  ChartSplineData('Tu', 5),
  ChartSplineData('Wo', 9),
  ChartSplineData('Th', 4),
  ChartSplineData('Fr', 7),
  ChartSplineData('Sa', 3),
  ChartSplineData('Su', 7),
];
