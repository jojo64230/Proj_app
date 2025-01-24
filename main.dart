import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedValue = 0;

  LineChartData _buildLineChartData(int selectedValue) {
    return LineChartData(
      gridData: FlGridData(show: true),
      titlesData: FlTitlesData(show: true),
      borderData: FlBorderData(show: true),
      lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, selectedValue.toDouble()), // Premier point
            FlSpot(1, (selectedValue + 1).toDouble()), // Deuxième point
            FlSpot(2, (selectedValue + 2).toDouble()), // Troisième point
            FlSpot(3, (selectedValue + 3).toDouble()), // Quatrième point
          ],
          isCurved: true,
          color: Colors.blue, // Couleur de la courbe
          belowBarData: BarAreaData(show: true),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Courbes Dynamiques')),
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _selectedValue = 5; // Valeur de la courbe 1
              });
            },
            child: Text('Courbe 1'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _selectedValue = 10; // Valeur de la courbe 2
              });
            },
            child: Text('Courbe 2'),
          ),
          Expanded(
            child: LineChart(_buildLineChartData(_selectedValue)),
          ),
        ],
      ),
    );
  }
}

