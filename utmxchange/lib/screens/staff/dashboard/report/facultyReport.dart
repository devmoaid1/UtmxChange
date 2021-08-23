import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:utm_x_change/models/report/indicator.dart';

class FacultyReport extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FacultyReportState();
}

class FacultyReportState extends State<FacultyReport> {
  final Color leftBarColor = const Color(0xff53fdd7);
  final Color rightBarColor = const Color(0xffff5182);
  final double width = 7;

  List<BarChartGroupData> rawBarGroups;
  List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex;

  @override
  void initState() {
    super.initState();
    final facultyEngineering = makeGroupData(0, 15, 9);
    final facultySocailScinece = makeGroupData(1, 16, 7);
    final facultyBuildEnvironment = makeGroupData(2, 18, 5);
    final facultyScience = makeGroupData(3, 20, 6);
    final internationalBusinessSchool = makeGroupData(4, 17, 6);
    final facultyTechnology = makeGroupData(5, 19, 1.5);
    final mjit = makeGroupData(6, 10, 1.5);

    final items = [
      facultyEngineering,
      facultySocailScinece,
      facultyBuildEnvironment,
      facultyScience,
      internationalBusinessSchool,
      facultyTechnology,
      mjit,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  Indicator buildIndicator(text, color) {
    return Indicator(
      color: color,
      text: text,
      isSquare: false,
      size: 14,
      textColor: Colors.grey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 1,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          color: const Color(0xff2c4260),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    makeTransactionsIcon(),
                    const SizedBox(
                      width: 38,
                    ),
                    const Text(
                      'Faculty',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Overlock',
                          fontSize: 18),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Text(
                      'Report',
                      style: TextStyle(
                          color: Color(0xff77839a),
                          fontFamily: 'Overlock',
                          fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 38,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: BarChart(
                      BarChartData(
                        maxY: 20,
                        barTouchData: BarTouchData(
                            touchTooltipData: BarTouchTooltipData(
                              tooltipBgColor: Colors.grey,
                              getTooltipItem: (_a, _b, _c, _d) => null,
                            ),
                            touchCallback: (response) {
                              if (response.spot == null) {
                                setState(() {
                                  touchedGroupIndex = -1;
                                  showingBarGroups = List.of(rawBarGroups);
                                });
                                return;
                              }

                              touchedGroupIndex =
                                  response.spot.touchedBarGroupIndex;

                              setState(() {
                                if (response.touchInput is FlLongPressEnd ||
                                    response.touchInput is FlPanEnd) {
                                  touchedGroupIndex = -1;
                                  showingBarGroups = List.of(rawBarGroups);
                                } else {
                                  showingBarGroups = List.of(rawBarGroups);
                                  if (touchedGroupIndex != -1) {
                                    double sum = 0;
                                    for (BarChartRodData rod
                                        in showingBarGroups[touchedGroupIndex]
                                            .barRods) {
                                      sum += rod.y;
                                    }
                                    final avg = sum /
                                        showingBarGroups[touchedGroupIndex]
                                            .barRods
                                            .length;

                                    showingBarGroups[touchedGroupIndex] =
                                        showingBarGroups[touchedGroupIndex]
                                            .copyWith(
                                      barRods:
                                          showingBarGroups[touchedGroupIndex]
                                              .barRods
                                              .map((rod) {
                                        return rod.copyWith(y: avg);
                                      }).toList(),
                                    );
                                  }
                                }
                              });
                            }),
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
                                  return 'FE';
                                case 1:
                                  return 'FSH';
                                case 2:
                                  return 'FBE';
                                case 3:
                                  return 'FS';
                                case 4:
                                  return 'AIB';
                                case 5:
                                  return 'RFT';
                                case 6:
                                  return 'MJIIT';
                                default:
                                  return '';
                              }
                            },
                          ),
                          leftTitles: SideTitles(
                            showTitles: true,
                            textStyle: TextStyle(
                                color: const Color(0xff7589a2),
                                fontWeight: FontWeight.bold,
                                fontSize: 14),
                            margin: 32,
                            reservedSize: 14,
                            getTitles: (value) {
                              switch (value.toInt()) {
                                case 0:
                                  return '0';
                                case 5:
                                  return '5';
                                case 10:
                                  return '10';
                                case 15:
                                  return '15';
                                case 20:
                                  return '>15';
                                default:
                                  return '';
                              }
                            },
                          ),
                        ),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        barGroups: showingBarGroups,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    buildIndicator('All Semester', leftBarColor),
                    buildIndicator('Current Semester', rightBarColor),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(barsSpace: 4, x: x, barRods: [
      BarChartRodData(
        y: y1,
        color: leftBarColor,
        width: width,
      ),
      BarChartRodData(
        y: y2,
        color: rightBarColor,
        width: width,
      ),
    ]);
  }

  Widget makeTransactionsIcon() {
    const double width = 4.5;
    const double space = 3.5;
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 42,
          color: Colors.white.withOpacity(1),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 28,
          color: Colors.white.withOpacity(0.8),
        ),
        const SizedBox(
          width: space,
        ),
        Container(
          width: width,
          height: 10,
          color: Colors.white.withOpacity(0.4),
        ),
      ],
    );
  }
}
