import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'chart.dart';  // Asegúrate de que el archivo contenga SimpleTimeSeriesChart
import 'createData.dart';  // Asegúrate de que el archivo contenga createData()

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final data = createData();

    return MaterialApp(
      title: 'Series de Tiempo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      color: Colors.blue,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Series de Tiempo'),
        ),
        body: SimpleTimeSeriesChart(data, animate: true),
      ),

    );
  }
}
