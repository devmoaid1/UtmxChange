import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class SemesterReport extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SemesterReportState();
}

class SemesterReportState extends State<SemesterReport> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 1.7,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          color: const Color(0xff2c4260),
          child: BarChart(
            BarChartData(
              alignment: BarChartAlignment.spaceAround,
              maxY: 20,
              barTouchData: BarTouchData(
                enabled: false,
                touchTooltipData: BarTouchTooltipData(
                  tooltipBgColor: Colors.transparent,
                  tooltipPadding: const EdgeInsets.all(0),
                  tooltipBottomMargin: 8,
                  getTooltipItem: (
                    BarChartGroupData group,
                    int groupIndex,
                    BarChartRodData rod,
                    int rodIndex,
                  ) {
                    return BarTooltipItem(
                      rod.y.round().toString(),
                      TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                ),
              ),
              titlesData: FlTitlesData(
                show: true,
                bottomTitles: SideTitles(
                  showTitles: true,
                  textStyle: TextStyle(
                      color: const Color(0xff7589a2),
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                  margin: 20,
                  getTitles: (double value) {
                    switch (value.toInt()) {
                      case 0:
                        return '18/19-01';
                      case 1:
                        return '18/19-02';
                      case 2:
                        return '19/20-01';
                      case 3:
                        return '19/20-02';
                      case 4:
                        return '20/21-01';
                      case 5:
                        return '20/21-02';
                      default:
                        return '';
                    }
                  },
                ),
                leftTitles: SideTitles(showTitles: false),
              ),
              borderData: FlBorderData(
                show: false,
              ),
              barGroups: [
                BarChartGroupData(x: 0, barRods: [
                  BarChartRodData(y: 8, color: Colors.lightBlueAccent)
                ], showingTooltipIndicators: [
                  0
                ]),
                BarChartGroupData(x: 1, barRods: [
                  BarChartRodData(y: 10, color: Colors.lightBlueAccent)
                ], showingTooltipIndicators: [
                  0
                ]),
                BarChartGroupData(x: 2, barRods: [
                  BarChartRodData(y: 14, color: Colors.lightBlueAccent)
                ], showingTooltipIndicators: [
                  0
                ]),
                BarChartGroupData(x: 3, barRods: [
                  BarChartRodData(y: 15, color: Colors.lightBlueAccent)
                ], showingTooltipIndicators: [
                  0
                ]),
                BarChartGroupData(x: 3, barRods: [
                  BarChartRodData(y: 10, color: Colors.lightBlueAccent)
                ], showingTooltipIndicators: [
                  0
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
