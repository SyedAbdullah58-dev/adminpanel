import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomChart extends StatelessWidget {
  const CustomChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,child: Stack(
      children: [
        PieChart(
            PieChartData(
                sectionsSpace: 0,centerSpaceRadius: 70,
                sections: [
                  PieChartSectionData(value: 50,color: Colors.blue,title: "Completed"),
                  PieChartSectionData(value: 15,color: Colors.red,title: "Deadline near"),
                  PieChartSectionData(value: 35,color: Colors.green,title: "Inprogress"),
                ]
            )
        ),Positioned.fill(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text("62%",style: Theme.of(context).textTheme.headline5,),
            Text("Success Rate",style: Theme.of(context).textTheme.headline6,),

          ],))
      ],
    ),
    );
  }
}