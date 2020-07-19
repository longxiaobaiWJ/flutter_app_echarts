import 'package:flutter/material.dart';
import 'package:flutter_echarts/flutter_echarts.dart' as Echarts;
import 'package:charts_flutter/flutter.dart' as charts;

// ignore: must_be_immutable
class EchartsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('eCharts'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Container(
              height: 250,
              child: getBar(),
            ),
            Container(
              height: 250,
              child: getLine(),
            )
          ],
        ),
      )
    );
  }

  String _year='2012';
  int _sales =78;
  //点击柱状图触发的函数
  _onSelectionChanged(charts.SelectionModel model) {
    print(charts.SelectionModelType);
    final selectedDatum = model.selectedDatum;
    print(selectedDatum.first.datum.year);
    print(selectedDatum.first.datum.sales);
    print(selectedDatum.first.series.displayName);
  }

  Widget getLine() {
    List<Linesales> dataLine = [
      new Linesales(new DateTime(2019, 7, 2), 33),
      new Linesales(new DateTime(2019, 7, 3), 55),
      new Linesales(new DateTime(2019, 7, 4), 22),
      new Linesales(new DateTime(2019, 7, 5), 88),
      new Linesales(new DateTime(2019, 7, 6), 123),
      new Linesales(new DateTime(2019, 7, 7), 75),
    ];

    var seriesLine = [
      charts.Series<Linesales, DateTime>(
        data: dataLine,
        domainFn: (Linesales lines, _) => lines.time,
        measureFn: (Linesales lines, _) => lines.sale,
        id: "Lines",
      )
    ];
    //是TimeSeriesChart，而不是LineChart,因为x轴是DataTime类
    Widget line = charts.TimeSeriesChart(seriesLine);
    //line = charts.LineChart(series);
    return line;
  }

  Widget getBar() {
    List<Barsales> dataBar = [
      new Barsales("1", 20),
      new Barsales("2", 50),
      new Barsales("3", 20),
      new Barsales("4", 80),
      new Barsales("5", 120),
      new Barsales("6", 30),
    ];

    var seriesBar = [
      charts.Series(
        data: dataBar,
        domainFn: (Barsales sales, _) => sales.day,
        measureFn: (Barsales sales, _) => sales.sale,
        id: "Sales",
      )
    ];
    return charts.BarChart(seriesBar);
  }
}

class Barsales {
  String day;
  int sale;
  Barsales(this.day, this.sale);
}

class Linesales {
  DateTime time;
  int sale;
  Linesales(this.time, this.sale);
}

