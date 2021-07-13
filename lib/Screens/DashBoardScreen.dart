import 'package:adminpanel/Model/CloudStorage.dart';
import 'package:adminpanel/Responsive.dart';
import 'package:adminpanel/Widgets/CustomChart.dart';
import 'package:adminpanel/Widgets/Header.dart';
import 'package:adminpanel/Widgets/InfoCard.dart';
import 'package:adminpanel/Widgets/MyFiles.dart';
import 'package:adminpanel/Widgets/ProfileCard.dart';
import 'package:adminpanel/Widgets/ProjectStatus.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '';

import '../Constants.dart';

class DashBoardScreen extends StatelessWidget {

  const DashBoardScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(defaultPadding),
            child: Header(),
          ),
          MyFiles(),

        ],
      ),
    ));
  }
}




