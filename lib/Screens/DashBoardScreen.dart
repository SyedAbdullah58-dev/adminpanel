import 'package:adminpanel/Widgets/CustomChart.dart';
import 'package:adminpanel/Widgets/Header.dart';
import 'package:adminpanel/Widgets/ProfileCard.dart';
import 'package:adminpanel/Widgets/ProjectStatus.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

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
      Row(
        children: [
          Expanded(
              flex: 5,
              child: Container(
                height: Get.height * 0.8,
                width: Get.width * 0.5,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(defaultPadding),
                      child: Row(
                        children: [
                          Text("My Files"),
                          Expanded(child: SizedBox()),
                          ElevatedButton.icon(
                              onPressed: () {},
                              icon: Icon(Icons.add),
                              label: Text("Add New"))
                        ],
                      ),
                    )
                  ],
                ),
              )),
          SizedBox(
            width: defaultPadding,
          ),
          ProjectStatus(), SizedBox(
            height: defaultPadding,

          ),
          GridView.builder(
            itemCount: 4,
            shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,crossAxisSpacing: defaultPadding), itemBuilder: (context, index) =>
              Container(
decoration: BoxDecoration(
  color: secondaryColor

),

              )
          )

            ],
          )
        ],
      ),
    ));
  }
}

