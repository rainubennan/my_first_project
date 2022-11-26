
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
void main(){
  runApp(MaterialApp());
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Linear Percent Indicators"),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
              width: 140.0,
              lineHeight: 14.0,
              percent: 0.5,
              center: const Text(
                "50.0%",
                style: TextStyle(fontSize: 12.0),
              ),
              trailing: const Icon(Icons.mood),
              linearStrokeCap: LinearStrokeCap.roundAll,
              backgroundColor: Colors.grey,
              progressColor: Colors.blue,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: LinearPercentIndicator(
              width: 170.0,
              animation: true,
              animationDuration: 1000,
              lineHeight: 20.0,
              leading: const Text("left content"),
              trailing: const Text("right content"),
              percent: 0.2,
              center: const Text("20.0%"),
              linearStrokeCap:LinearStrokeCap.roundAll,
              progressColor: Colors.red,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: new LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 50,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2000,
              percent: 0.9,
              center: Text("90.0%"),
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Colors.greenAccent,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: new LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 50,
              animation: true,
              lineHeight: 20.0,
              animationDuration: 2500,
              percent: 0.8,
              center: Text("80.0%"),
              linearStrokeCap: LinearStrokeCap.roundAll,
              progressColor: Colors.green,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                new LinearPercentIndicator(
                  width: 100.0,
                  lineHeight: 8.0,
                  percent: 0.2,
                  progressColor: Colors.red,
                ),
                new LinearPercentIndicator(
                  width: 100.0,
                  lineHeight: 8.0,
                  percent: 0.5,
                  progressColor: Colors.orange,
                ),
                new LinearPercentIndicator(
                  width: 100.0,
                  lineHeight: 8.0,
                  percent: 0.9,
                  progressColor: Colors.blue,
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}