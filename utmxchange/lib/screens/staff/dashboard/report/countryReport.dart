import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:utm_x_change/models/report/indicator.dart';

class CountryReport extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => CountryReportState();
}

class CountryReportState extends State {
  int touchedIndex;
  final List<String> country = ['BAN', 'GER', 'AUS', 'FRA'];
  final List<Color> colors = [
    Color(0xff0293ee),
    Color(0xfff8b250),
    Color(0xff845bef),
    Color(0xff13d38e)
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AspectRatio(
        aspectRatio: 1.3,
        child: Card(
          elevation: 5,
          color: Color(0xff2c4260),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 28,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  for (int i = 0; i < country.length; i++)
                    buildIndicator(country[i], colors[i],i),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: PieChart(
                    PieChartData(
                        pieTouchData:
                            PieTouchData(touchCallback: (pieTouchResponse) {
                          setState(() {
                            if (pieTouchResponse.touchInput is FlLongPressEnd ||
                                pieTouchResponse.touchInput is FlPanEnd) {
                              touchedIndex = -1;
                            } else {
                              touchedIndex = pieTouchResponse.touchedSectionIndex;
                            }
                          });
                        }),
                        startDegreeOffset: 180,
                        borderData: FlBorderData(
                          show: false,
                        ),
                        sectionsSpace: 12,
                        centerSpaceRadius: 0,
                        sections: showingSections()),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Indicator buildIndicator(text, color, index) {
    return Indicator(
      color: color,
      text: text,
      isSquare: false,
      size: touchedIndex == index ? 16 : 14,
      textColor: touchedIndex == index ? Colors.white : Colors.grey,
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(
      4,
      (i) {
        final isTouched = i == touchedIndex;
        final double opacity = isTouched ? 1 : 0.8;
        switch (i) {
          case 0:
            return PieChartSectionData(
              color: const Color(0xff0293ee).withOpacity(opacity),
              value: 10,
              title: '10%',
              radius: 80,
              titleStyle: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Overlock',
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff044d7c)),
              titlePositionPercentageOffset: 0.55,
            );
          case 1:
            return PieChartSectionData(
              color: const Color(0xfff8b250).withOpacity(opacity),
              value: 40,
              title: '40%',
              radius: 65,
              titleStyle: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Overlock',
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff90672d)),
              titlePositionPercentageOffset: 0.55,
            );
          case 2:
            return PieChartSectionData(
              color: const Color(0xff845bef).withOpacity(opacity),
              value: 25,
              title: '25%',
              radius: 60,
              titleStyle: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Overlock',
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff4c3788)),
              titlePositionPercentageOffset: 0.6,
            );
          case 3:
            return PieChartSectionData(
              color: const Color(0xff13d38e).withOpacity(opacity),
              value: 25,
              title: '25%',
              radius: 70,
              titleStyle: TextStyle(
                  fontSize: 18,
                  fontFamily: 'Overlock',
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff0c7f55)),
              titlePositionPercentageOffset: 0.55,
            );
          default:
            return null;
        }
      },
    );
  }
}
